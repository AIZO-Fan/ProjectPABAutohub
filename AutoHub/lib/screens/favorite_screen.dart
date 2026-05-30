import 'package:flutter/material.dart';
import 'package:autohub/data/movie_data.dart';
import 'package:autohub/models/Movie.dart';
import 'package:autohub/screens/detail_screen.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  List<Movie> favoriteMovies = [];

  void _loadFavorites() {
    favoriteMovies =
        movieList.where((movie) => movie.isFavorite).toList();
  }

  @override
  void initState() {
    super.initState();
    _loadFavorites();
  }

  Color _ageColor(String rating) {
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

  @override
  Widget build(BuildContext context) {
    _loadFavorites();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          'Favorite',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: favoriteMovies.isEmpty
          ? const Center(
              child: Text(
                'Belum ada movie favorit ❤️',
                style: TextStyle(fontSize: 18),
              ),
            )
          : ListView.builder(
              padding: const EdgeInsets.all(12),
              itemCount: favoriteMovies.length,
              itemBuilder: (context, index) {
                final movie = favoriteMovies[index];

                return Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: Material(
                    elevation: 2,
                    color: Colors.white,                
                    surfaceTintColor: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(16),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) =>
                                MovieDetailScreen(movie: movie),
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // POSTER
                            ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.asset(
                                movie.posterAsset,
                                width: 90,
                                height: 130,
                                fit: BoxFit.cover,
                              ),
                            ),

                            const SizedBox(width: 12),

                            // INFO
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        child: Text(
                                          movie.title,
                                          style: const TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      Icon(
                                        Icons.favorite,
                                        color: Colors.red,
                                      ),
                                    ],
                                  ),

                                  const SizedBox(height: 4),

                                  Text(
                                    movie.director,
                                    style: const TextStyle(
                                      color: Colors.grey,
                                      fontSize: 13,
                                    ),
                                  ),

                                  const SizedBox(height: 8),

                                  // TAGS
                                  Wrap(
                                    spacing: 8,
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 8,
                                          vertical: 2,
                                        ),
                                        decoration: BoxDecoration(
                                          color:
                                              _ageColor(movie.ageRating),
                                          borderRadius:
                                              BorderRadius.circular(4),
                                        ),
                                        child: Text(
                                          movie.ageRating,
                                          style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 11,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      _infoChip(
                                          movie.releaseDate.year.toString()),
                                      _infoChip(movie.duration),
                                    ],
                                  ),

                                  const SizedBox(height: 6),

                                  Text(
                                    movie.genre,
                                    style: const TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey,
                                    ),
                                  ),

                                  const SizedBox(height: 6),

                                  Text(
                                    movie.description,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style:
                                        const TextStyle(fontSize: 13),
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
              },
            ),
    );
  }

  Widget _infoChip(String text) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 11,
          fontWeight: FontWeight.bold,
          color: Colors.grey,
        ),
      ),
    );
  }
}
