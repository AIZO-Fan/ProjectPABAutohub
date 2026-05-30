import 'package:flutter/material.dart';
import 'package:autohub/data/movie_data.dart';
import 'package:autohub/models/Movie.dart';
import 'package:autohub/screens/detail_screen.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  List<Movie> _filteredMovies = [];
  String _searchQuery = '';
  final TextEditingController _searchController = TextEditingController();
  String? _selectedGenre;
  String? _selectedAgeRating;
  int? _selectedYear;
  
  final List<String> _allGenres = [];
  final List<String> _allAgeRatings = [];
  final List<int> _allYears = [];

  @override
  void initState() {
    super.initState();
    
    // Initialize dengan safety check
    try {
      _filteredMovies = List.from(movieList);
      _extractFilterOptions();
    } catch (e) {
      print('Error initializing movie list: $e');
      _filteredMovies = [];
    }
    
    _searchController.addListener(_performSearch);
  }

  void _extractFilterOptions() {
    try {
      final genreSet = <String>{};
      final ageRatingSet = <String>{};
      final yearSet = <int>{};

      if (movieList.isEmpty) return;

      for (final movie in movieList) {
        if (movie.genre.isNotEmpty) {
          final genres = movie.genre.split(',').map((g) => g.trim()).toList();
          for (final genre in genres) {
            if (genre.isNotEmpty) {
              genreSet.add(genre);
            }
          }
        }
        
        if (movie.ageRating.isNotEmpty) {
          ageRatingSet.add(movie.ageRating);
        }
        
        yearSet.add(movie.releaseDate.year);
      }

      _allGenres.clear();
      if (genreSet.isNotEmpty) {
        _allGenres.addAll(genreSet.toList());
        _allGenres.sort();
      }
      
      _allAgeRatings.clear();
      if (ageRatingSet.isNotEmpty) {
        _allAgeRatings.addAll(ageRatingSet.toList());
        _allAgeRatings.sort();
      }
      
      _allYears.clear();
      if (yearSet.isNotEmpty) {
        _allYears.addAll(yearSet.toList());
        _allYears.sort((a, b) => b.compareTo(a));
      }
      
    } catch (e) {
      print('Error extracting filter options: $e');
    }
  }

  void _performSearch() {
    try {
      _searchQuery = _searchController.text.toLowerCase().trim();
      
      setState(() {
        if (movieList.isEmpty) {
          _filteredMovies = [];
          return;
        }

        _filteredMovies = movieList.where((movie) {
          try {
            if (movie.title.isEmpty) return false;
            
            bool matchesSearch = _searchQuery.isEmpty ||
                movie.title.toLowerCase().contains(_searchQuery) ||
                (movie.director.isNotEmpty && 
                 movie.director.toLowerCase().contains(_searchQuery)) ||
                (movie.genre.isNotEmpty && 
                 movie.genre.toLowerCase().contains(_searchQuery));

            bool matchesGenre = _selectedGenre == null ||
                (movie.genre.isNotEmpty && 
                 movie.genre.toLowerCase().contains(_selectedGenre!.toLowerCase()));

            bool matchesAgeRating = _selectedAgeRating == null ||
                movie.ageRating == _selectedAgeRating;

            bool matchesYear = _selectedYear == null ||
                movie.releaseDate.year == _selectedYear;

            return matchesSearch && matchesGenre && matchesAgeRating && matchesYear;
          } catch (e) {
            return false;
          }
        }).toList();
      });
    } catch (e) {
      print('Search error: $e');
    }
  }

  void _toggleFavorite(Movie movie) {
    try {
      setState(() {
        final index = movieList.indexWhere((m) => m.title == movie.title);
        if (index != -1) {
          movieList[index].isFavorite = !movieList[index].isFavorite;
          
          final filteredIndex = _filteredMovies.indexWhere((m) => m.title == movie.title);
          if (filteredIndex != -1) {
            _filteredMovies[filteredIndex].isFavorite = movieList[index].isFavorite;
          }
        }
      });
    } catch (e) {
      print('Toggle favorite error: $e');
    }
  }

  void _cleautohublters() {
    try {
      setState(() {
        _selectedGenre = null;
        _selectedAgeRating = null;
        _selectedYear = null;
        _searchController.clear();
      });
      _performSearch();
    } catch (e) {
      print('Clear filters error: $e');
    }
  }

  Widget _buildMovieImage(Movie movie) {
    return Container(
      width: 80,
      height: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.grey[200],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image.asset(
          movie.posterAsset,
          fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) {
            return Container(
              color: Colors.grey[200],
              child: const Center(
                child: Icon(
                  Icons.movie,
                  size: 30,
                  color: Colors.grey,
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Color _getAgeRatingColor(String rating) {
    switch (rating) {
      case 'Semua Umur':
        return Colors.green;
      case '13+':
        return Colors.orange;
      case '17+':
        return Colors.red;
      default:
        return Colors.blue;
    }
  }

  Widget _buildFilterChip({
    required String label,
    required bool selected,
    required VoidCallback onSelected,
  }) {
      return Padding(
        padding: const EdgeInsets.only(right: 8),
        child: FilterChip(
          label: Text(label),
          selected: selected,
          onSelected: (_) => onSelected(),
          selectedColor: Colors.blue,
          checkmarkColor: Colors.white,
          labelStyle: TextStyle(
            color: selected ? Colors.white : Colors.black,
          ),
        ),
      );
    }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text(
          'Search Movies',
          style: TextStyle(
            fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.white,
          centerTitle: true,
          actions: [
            if (_selectedGenre != null || _selectedAgeRating != null || _selectedYear != null || _searchQuery.isNotEmpty)
              IconButton(
                icon: const Icon(Icons.filter_alt_off),
                onPressed: _cleautohublters,
                tooltip: 'Clear all filters',
              ),
          ],
        ),
        
        body: Column(
          children: [
            Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
    child: TextField(
      controller: _searchController,
      onChanged: (_) => _performSearch(),
      decoration: InputDecoration(
        hintText: 'Search',
        prefixIcon: const Icon(Icons.search),
        suffixIcon: _searchController.text.isNotEmpty
            ? IconButton(
                icon: const Icon(Icons.close),
                onPressed: () {
                  _searchController.clear();
                  _performSearch();
                },
              )
            : null,
        filled: true,
        fillColor: Colors.grey.shade200,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide.none,
        ),
      ),
    ),
  ),


          // Filter Section
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Row(
              children: [
                _buildFilterChip(
                  label: 'All',
                  selected: _selectedGenre == null && _selectedAgeRating == null && _selectedYear == null,
                  onSelected: () {
                    setState(() {
                      _selectedGenre = null;
                      _selectedAgeRating = null;
                      _selectedYear = null;
                    });
                    _performSearch();
                  },
                ),
                
                if (_allGenres.isNotEmpty)
                  PopupMenuButton<String>(
                    onSelected: (value) {
                      setState(() {
                        _selectedGenre = value == 'All' ? null : value;
                      });
                      _performSearch();
                    },
                    itemBuilder: (context) {
                      final items = <PopupMenuItem<String>>[
                        const PopupMenuItem(value: 'All', child: Text('All Genres')),
                      ];
                      
                      for (final genre in _allGenres) {
                        items.add(PopupMenuItem(value: genre, child: Text(genre)));
                      }
                      
                      return items;
                    },
                    child: Chip(
                      label: Row(
                        children: [
                          const Icon(Icons.category, size: 16),
                          const SizedBox(width: 4),
                          Text(_selectedGenre ?? 'Genre'),
                        ],
                      ),
                      backgroundColor: _selectedGenre != null ? Colors.blue[100] : null,
                    ),
                  ),
                
                if (_allGenres.isNotEmpty) const SizedBox(width: 8),
                
                if (_allAgeRatings.isNotEmpty)
                  PopupMenuButton<String>(
                    onSelected: (value) {
                      setState(() {
                        _selectedAgeRating = value == 'All' ? null : value;
                      });
                      _performSearch();
                    },
                    itemBuilder: (context) {
                      final items = <PopupMenuItem<String>>[
                        const PopupMenuItem(value: 'All', child: Text('All Ratings')),
                      ];
                      
                      for (final rating in _allAgeRatings) {
                        items.add(PopupMenuItem(value: rating, child: Text(rating)));
                      }
                      
                      return items;
                    },
                    child: Chip(
                      label: Row(
                        children: [
                          const Icon(Icons.numbers, size: 16),
                          const SizedBox(width: 4),
                          Text(_selectedAgeRating ?? 'Rating'),
                        ],
                      ),
                      backgroundColor: _selectedAgeRating != null ? Colors.green[100] : null,
                    ),
                  ),
                
                if (_allAgeRatings.isNotEmpty) const SizedBox(width: 8),
                
                if (_allYears.isNotEmpty)
                  PopupMenuButton<int>(
                    onSelected: (value) {
                      setState(() {
                        _selectedYear = value == -1 ? null : value;
                      });
                      _performSearch();
                    },
                    itemBuilder: (context) {
                      final items = <PopupMenuItem<int>>[
                        const PopupMenuItem(value: -1, child: Text('All Years')),
                      ];
                      
                      for (final year in _allYears) {
                        items.add(PopupMenuItem(value: year, child: Text(year.toString())));
                      }
                      
                      return items;
                    },
                    child: Chip(
                      label: Row(
                        children: [
                          const Icon(Icons.calendar_today, size: 16),
                          const SizedBox(width: 4),
                          Text(_selectedYear != null ? _selectedYear.toString() : 'Year'),
                        ],
                      ),
                      backgroundColor: _selectedYear != null ? Colors.orange[100] : null,
                    ),
                  ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '${_filteredMovies.length} movies found',
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                if (_searchQuery.isNotEmpty)
                  Text(
                    '"$_searchQuery"',
                    style: const TextStyle(
                      color: Colors.blue,
                      fontSize: 14,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
              ],
            ),
          ),

          Expanded(
            child: _filteredMovies.isEmpty
                ? Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.search_off,
                          size: 80,
                          color: Colors.grey,
                        ),
                        const SizedBox(height: 16),
                        Text(
                          _searchQuery.isEmpty && 
                          _selectedGenre == null && 
                          _selectedAgeRating == null && 
                          _selectedYear == null
                              ? 'Start searching for movies'
                              : 'No movies found',
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                          ),
                        ),
                        if (_searchQuery.isNotEmpty || 
                            _selectedGenre != null || 
                            _selectedAgeRating != null || 
                            _selectedYear != null)
                          TextButton(
                            onPressed: _cleautohublters,
                            child: const Text('Clear filters'),
                          ),
                      ],
                    ),
                  )
                : ListView.builder(
                    padding: const EdgeInsets.only(bottom: 16),
                    itemCount: _filteredMovies.length,
                    itemBuilder: (context, index) {
                      if (index < 0 || index >= _filteredMovies.length) {
                        return const SizedBox.shrink();
                      }
                      
                      try {
                        final movie = _filteredMovies[index];
                        
                        if (movie.title.isEmpty) {
                          return const SizedBox.shrink();
                        }
                        
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 6,
                          ),
                          child: Material(
                            borderRadius: BorderRadius.circular(12),
                            elevation: 2,
                            color: Colors.white,
                            child: InkWell(
                              borderRadius: BorderRadius.circular(12),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        MovieDetailScreen(movie: movie),
                                  ),
                                );
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(12),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    _buildMovieImage(movie),
                                    
                                    const SizedBox(width: 12),
                                    
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Expanded(
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      movie.title,
                                                      style: const TextStyle(
                                                        fontSize: 16,
                                                        fontWeight: FontWeight.bold,
                                                      ),
                                                      maxLines: 2,
                                                      overflow: TextOverflow.ellipsis,
                                                    ),
                                                    const SizedBox(height: 4),
                                                    Text(
                                                      movie.director,
                                                      style: const TextStyle(
                                                        fontSize: 13,
                                                        color: Colors.grey,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              IconButton(
                                                icon: Icon(
                                                  movie.isFavorite
                                                      ? Icons.favorite
                                                      : Icons.favorite_border,
                                                  color: movie.isFavorite
                                                      ? Colors.red
                                                      : Colors.grey,
                                                  size: 20,
                                                ),
                                                onPressed: () => _toggleFavorite(movie),
                                                padding: EdgeInsets.zero,
                                                constraints: const BoxConstraints(),
                                              ),
                                            ],
                                          ),
                                          
                                          const SizedBox(height: 8),
                                          
                                          Wrap(
                                            spacing: 8,
                                            runSpacing: 4,
                                            children: [
                                              Container(
                                                padding: const EdgeInsets.symmetric(
                                                  horizontal: 8,
                                                  vertical: 2,
                                                ),
                                                decoration: BoxDecoration(
                                                  color: _getAgeRatingColor(
                                                      movie.ageRating),
                                                  borderRadius:
                                                      BorderRadius.circular(4),
                                                ),
                                                child: Text(
                                                  movie.ageRating,
                                                  style: const TextStyle(
                                                    fontSize: 11,
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                              
                                              Container(
                                                padding: const EdgeInsets.symmetric(
                                                  horizontal: 8,
                                                  vertical: 2,
                                                ),
                                                decoration: BoxDecoration(
                                                  color: Colors.grey[200],
                                                  borderRadius:
                                                      BorderRadius.circular(4),
                                                ),
                                                child: Text(
                                                  movie.releaseDate.year.toString(),
                                                  style: const TextStyle(
                                                    fontSize: 11,
                                                    color: Colors.grey,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                              
                                              Container(
                                                padding: const EdgeInsets.symmetric(
                                                  horizontal: 8,
                                                  vertical: 2,
                                                ),
                                                decoration: BoxDecoration(
                                                  color: Colors.blue[50],
                                                  borderRadius:
                                                      BorderRadius.circular(4),
                                                ),
                                                child: Text(
                                                  movie.duration,
                                                  style: const TextStyle(
                                                    fontSize: 11,
                                                    color: Colors.blue,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          
                                          const SizedBox(height: 8),
                                          
                                          Text(
                                            movie.genre,
                                            style: const TextStyle(
                                              fontSize: 12,
                                              color: Colors.grey,
                                            ),
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                          
                                          const SizedBox(height: 8),
                                          
                                          Text(
                                            movie.description,
                                            style: const TextStyle(fontSize: 13),
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      } catch (e) {
                        print('Error building movie item at index $index: $e');
                        return const SizedBox.shrink();
                      }
                    },
                  ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }
}