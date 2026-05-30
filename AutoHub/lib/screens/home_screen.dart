import 'dart:async';

import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:autohub/screens/search_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _searchController = TextEditingController();
  final PageController _pageController = PageController();

  String searchText = '';
  int _currentPage = 0;

  final List<String> bannerImages = [
    'assets/images/banner1.jpg',
    'assets/images/banner2.jpg',
    'assets/images/banner3.jpg',
  ];

  Timer? _timer;

  @override
  void initState() {
    super.initState();

    _timer = Timer.periodic(
      const Duration(seconds: 3),
      (timer) {
        if (_pageController.hasClients) {
          _currentPage++;

          if (_currentPage >= bannerImages.length) {
            _currentPage = 0;
          }

          _pageController.animateToPage(
            _currentPage,
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOut,
          );
        }
      },
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    _pageController.dispose();
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'AutoHub',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance
            .collection('bengkel')
            .snapshots(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return const Center(
              child: Text('Terjadi kesalahan'),
            );
          }

          if (snapshot.connectionState ==
              ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          final docs = snapshot.data!.docs;

          final filteredDocs = docs.where((doc) {
            final data =
                doc.data() as Map<String, dynamic>;

            final nama = (data['nama'] ?? '')
                .toString()
                .toLowerCase();

            return nama.contains(searchText);
          }).toList();

          return ListView(
            padding: const EdgeInsets.all(12),
            children: [
              // SEARCH
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SearchScreen(),
                    ),
                  );
                },
                child: AbsorbPointer(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Cari bengkel...',
                      prefixIcon: const Icon(Icons.search),
                      filled: true,
                      fillColor: Colors.grey.shade200,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // BANNER
              SizedBox(
                height: 180,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: PageView.builder(
                    controller: _pageController,
                    itemCount: bannerImages.length,
                    itemBuilder: (context, index) {
                      return Image.asset(
                        bannerImages[index],
                        fit: BoxFit.cover,
                      );
                    },
                  ),
                ),
              ),

              const SizedBox(height: 20),

              const Text(
                'Most Popular',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 10),

              // LIST BENGKEL
              ...filteredDocs.map((doc) {
                final data =
                    doc.data() as Map<String, dynamic>;

                final imageName =
                    data['image'] ??
                    data['gambar'] ??
                    'bengkel1.jpg';

                return Card(
                  elevation: 3,
                  margin: const EdgeInsets.only(
                    bottom: 15,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(15),
                  ),
                  child: Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius:
                            const BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15),
                        ),
                        child: Image.asset(
                          'assets/images/$imageName',
                          height: 180,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),

                      Padding(
                        padding:
                            const EdgeInsets.all(12),
                        child: Column(
                          crossAxisAlignment:
                              CrossAxisAlignment.start,
                          children: [
                            Text(
                              data['nama'] ?? '-',
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight:
                                    FontWeight.bold,
                              ),
                            ),

                            const SizedBox(height: 8),

                            Container(
                              padding:
                                  const EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 4,
                              ),
                              decoration:
                                  BoxDecoration(
                                color: Colors
                                    .blue.shade100,
                                borderRadius:
                                    BorderRadius
                                        .circular(20),
                              ),
                              child: Text(
                                data['kategori'] ?? '-',
                              ),
                            ),

                            const SizedBox(height: 10),

                            Row(
                              children: [
                                const Icon(
                                  Icons.location_on,
                                  color: Colors.red,
                                  size: 18,
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Expanded(
                                  child: Text(
                                    data['alamat'] ??
                                        '-',
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              }),
            ],
          );
        },
      ),
    );
  }
}