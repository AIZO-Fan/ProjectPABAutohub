import 'package:flutter/material.dart';
import 'package:autohub/screens/detail_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:autohub/models/bengkel.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final FirebaseFirestore _firestore =
      FirebaseFirestore.instance;

  final TextEditingController _searchController =
      TextEditingController();

  List<Bengkel> _allBengkels = [];
  List<Bengkel> _filteredBengkels = [];

  String _searchQuery = '';
  String? _selectedKategori;

  final List<String> kategoriList = [
    'Servis Umum',
    'AC Mobil',
    'Suspensi',
    'Rem',
    'Transmisi',
    'Body Repair',
    'Cat Mobil',
    'Radiator',
    'Audio',
    'Ban',
    'ECU Specialist',
  ];

  @override
  void initState() {
    super.initState();

    _loadBengkel();

    _searchController.addListener(() {
      _searchQuery = _searchController.text;
      _filterData();
    });
  }

  Future<void> _loadBengkel() async {
    try {
      final snapshot =
          await _firestore.collection('bengkel').get();

      final data = snapshot.docs
          .map((doc) => Bengkel.fromFirestore(doc))
          .toList();

      setState(() {
        _allBengkels = data;
        _filteredBengkels = data;
      });
    } catch (e) {
      debugPrint('Firestore Error: $e');
    }
  }

  void _filterData() {
    setState(() {
      _filteredBengkels =
          _allBengkels.where((bengkel) {
        final searchMatch =
            bengkel.nama.toLowerCase().contains(
                  _searchQuery.toLowerCase(),
                ) ||
                bengkel.alamat.toLowerCase().contains(
                  _searchQuery.toLowerCase(),
                ) ||
                bengkel.kategori.toLowerCase().contains(
                  _searchQuery.toLowerCase(),
                );

        final kategoriMatch =
            _selectedKategori == null ||
            bengkel.kategori ==
                _selectedKategori;

        return searchMatch &&
            kategoriMatch;
      }).toList();
    });
  }

  Widget _buildKategoriChip(
      String kategori) {
    return FilterChip(
      label: Text(kategori),
      selected:
          _selectedKategori == kategori,
      selectedColor:
          Colors.blue.shade600,
      checkmarkColor: Colors.white,
      labelStyle: TextStyle(
        color:
            _selectedKategori == kategori
                ? Colors.white
                : Colors.black,
      ),
      onSelected: (value) {
        setState(() {
          _selectedKategori =
              value ? kategori : null;
        });

        _filterData();
      },
    );
  }

  Widget _buildBengkelCard(
      Bengkel bengkel) {
    return Card(
      elevation: 5,
      shadowColor: Colors.black12,
      margin:
          const EdgeInsets.only(bottom: 12),
      shape: RoundedRectangleBorder(
        borderRadius:
            BorderRadius.circular(16),
      ),
      child: InkWell(
        borderRadius:
            BorderRadius.circular(16),
        onTap: () {
          ScaffoldMessenger.of(context)
              .showSnackBar(
            SnackBar(
              content:
                  Text(bengkel.nama),
            ),
          );
        },
        child: Padding(
          padding:
              const EdgeInsets.all(12),
          child: Row(
            crossAxisAlignment:
                CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius:
                    BorderRadius.circular(
                        12),
                child: Image.asset(
                  'assets/images/${bengkel.image}',
                  width: 120,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),

              const SizedBox(width: 12),

              Expanded(
                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment
                          .start,
                  children: [
                    Text(
                      bengkel.nama,
                      style:
                          const TextStyle(
                        fontSize: 16,
                        fontWeight:
                            FontWeight
                                .bold,
                      ),
                    ),

                    const SizedBox(
                        height: 4),

                    Text(
                      bengkel.alamat,
                      style:
                          const TextStyle(
                        color:
                            Colors.grey,
                        fontSize: 12,
                      ),
                    ),

                    const SizedBox(
                        height: 8),

                    Text(
                      bengkel.deskripsi,
                      maxLines: 2,
                      overflow:
                          TextOverflow
                              .ellipsis,
                      style:
                          const TextStyle(
                        fontSize: 13,
                      ),
                    ),

                    const SizedBox(
                        height: 10),

                    Wrap(
                      spacing: 8,
                      crossAxisAlignment:
                          WrapCrossAlignment
                              .center,
                      children: [
                        Container(
                          padding:
                              const EdgeInsets
                                  .symmetric(
                            horizontal: 8,
                            vertical: 4,
                          ),
                          decoration:
                              BoxDecoration(
                            color: Colors
                                .blue
                                .shade50,
                            borderRadius:
                                BorderRadius
                                    .circular(
                                        20),
                          ),
                          child: Text(
                            bengkel
                                .kategori,
                            style:
                                const TextStyle(
                              fontSize:
                                  11,
                            ),
                          ),
                        ),

                        Row(
                          mainAxisSize:
                              MainAxisSize
                                  .min,
                          children: [
                            const Icon(
                              Icons.star,
                              color: Colors
                                  .orange,
                              size: 16,
                            ),
                            const SizedBox(
                                width: 3),
                            Text(
                              bengkel
                                  .rating
                                  .toString(),
                              style:
                                  const TextStyle(
                                fontWeight:
                                    FontWeight
                                        .w600,
                              ),
                            ),
                          ],
                        ),

                        Icon(
                          bengkel.favorite
                              ? Icons
                                  .favorite
                              : Icons
                                  .favorite_border,
                          color: bengkel
                                  .favorite
                              ? Colors.red
                              : Colors
                                  .black54,
                          size: 20,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(
      BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Search',
          style: TextStyle(
            color: Colors.black,
            fontWeight:
                FontWeight.bold,
          ),
        ),
      ),

      body: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.all(
                    16),
            // child:
                // _buildBannerSlider(),
          ),

          Padding(
            padding:
                const EdgeInsets
                    .symmetric(
              horizontal: 16,
            ),
            child: TextField(
              controller:
                  _searchController,
              decoration:
                  InputDecoration(
                hintText: 'Search',
                prefixIcon:
                    const Icon(
                  Icons.search,
                ),
                filled: true,
                fillColor:
                    Colors.grey
                        .shade200,
                border:
                    OutlineInputBorder(
                  borderRadius:
                      BorderRadius
                          .circular(
                              30),
                  borderSide:
                      BorderSide
                          .none,
                ),
              ),
            ),
          ),

          const SizedBox(height: 16),

          Padding(
            padding:
                const EdgeInsets
                    .symmetric(
              horizontal: 16,
            ),
            child: Align(
              alignment:
                  Alignment
                      .centerLeft,
              child: Text(
                'Spesialis',
                style:
                    const TextStyle(
                  fontWeight:
                      FontWeight
                          .bold,
                  fontSize: 16,
                ),
              ),
            ),
          ),

          const SizedBox(height: 10),

          Padding(
            padding:
                const EdgeInsets
                    .symmetric(
              horizontal: 16,
            ),
            child: Wrap(
              spacing: 8,
              runSpacing: 8,
              children: kategoriList
                  .map(
                    (kategori) =>
                        _buildKategoriChip(
                            kategori),
                  )
                  .toList(),
            ),
          ),

          const SizedBox(height: 16),

          Padding(
            padding:
                const EdgeInsets
                    .symmetric(
              horizontal: 16,
            ),
            child: Row(
              mainAxisAlignment:
                  MainAxisAlignment
                      .spaceBetween,
              children: [
                const Text(
                  'Recommendation',
                  style:
                      TextStyle(
                    fontSize: 18,
                    fontWeight:
                        FontWeight
                            .bold,
                  ),
                ),
                Text(
                  '${_filteredBengkels.length} bengkel',
                  style:
                      const TextStyle(
                    color:
                        Colors.grey,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 10),

          Expanded(
            child:
                _filteredBengkels
                        .isEmpty
                    ? const Center(
                        child: Text(
                          'Bengkel tidak ditemukan',
                        ),
                      )
                    : ListView
                        .builder(
                        padding:
                            const EdgeInsets
                                .all(
                                    16),
                        itemCount:
                            _filteredBengkels
                                .length,
                        itemBuilder:
                            (context,
                                index) {
                          return _buildBengkelCard(
                            _filteredBengkels[
                                index],
                          );
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
