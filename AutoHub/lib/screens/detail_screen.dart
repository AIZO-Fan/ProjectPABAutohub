import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class DetailScreen extends StatefulWidget {
  final Map<String, dynamic> bengkelData;
  final String documentId;

  const DetailScreen({
    super.key,
    required this.bengkelData,
    required this.documentId,
  });

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  late bool isFavorite;
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    isFavorite = widget.bengkelData['favorite'] ?? false;
  }

  Future<void> toggleFavorite() async {
    if (isLoading) return;

    setState(() {
      isLoading = true;
    });

    try {
      final newValue = !isFavorite;

      await FirebaseFirestore.instance
          .collection('bengkel')
          .doc(widget.documentId)
          .update({
        'favorite': newValue,
      });

      setState(() {
        isFavorite = newValue;
      });

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            newValue
                ? 'Ditambahkan ke favorit ❤️'
                : 'Dihapus dari favorit',
          ),
        ),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'Gagal mengubah favorit: $e',
          ),
        ),
      );
    }

    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    print(widget.bengkelData);
    final imageName =
        widget.bengkelData['image'] ??
        widget.bengkelData['gambar'] ??
        'bengkel1.jpg';

    final double latitude =
    (widget.bengkelData['latitude'] as num?)?.toDouble() ?? -2.990934;

    final double longitude =
    (widget.bengkelData['longitude'] as num?)?.toDouble() ?? 104.756554;

    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "About",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  Stack(
                    children: [
                      ClipRRect(
                        borderRadius:
                            const BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15),
                        ),
                        child: Image.asset(
                          'assets/images/$imageName',
                          width: double.infinity,
                          height: 220,
                          fit: BoxFit.cover,
                        ),
                      ),

                      Positioned(
                        top: 10,
                        left: 10,
                        child: Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.red,
                              child: IconButton(
                                icon: const Icon(
                                  Icons.call,
                                  color: Colors.white,
                                ),
                                onPressed: () {},
                              ),
                            ),

                            const SizedBox(width: 10),

                            CircleAvatar(
                              backgroundColor: Colors.green,
                              child: IconButton(
                                icon: const Icon(
                                  Icons.chat,
                                  color: Colors.white,
                                ),
                                onPressed: () {},
                              ),
                            ),
                          ],
                        ),
                      ),

                      Positioned(
                        top: 10,
                        right: 10,
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          child: isLoading
                              ? const Padding(
                                  padding:
                                      EdgeInsets.all(10),
                                  child:
                                      CircularProgressIndicator(
                                    strokeWidth: 2,
                                  ),
                                )
                              : IconButton(
                                  onPressed:
                                      toggleFavorite,
                                  icon: Icon(
                                    isFavorite
                                        ? Icons.favorite
                                        : Icons
                                            .favorite_border,
                                    color: Colors.red,
                                  ),
                                ),
                        ),
                      ),
                    ],
                  ),

                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: Row(
                      mainAxisAlignment:
                          MainAxisAlignment
                              .spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            widget.bengkelData['nama'] ??
                                '-',
                            style:
                                const TextStyle(
                              fontSize: 20,
                              fontWeight:
                                  FontWeight.bold,
                            ),
                          ),
                        ),

                        Row(
                          children: [
                            const Icon(
                              Icons.star,
                              color: Colors.orange,
                            ),
                            const SizedBox(width: 4),
                            Text(
                              "${widget.bengkelData['rating'] ?? 0}/10",
                              style:
                                  const TextStyle(
                                fontWeight:
                                    FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              "Deskripsi",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),

            const SizedBox(height: 10),

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius:
                    BorderRadius.circular(15),
              ),
              child: Text(
                widget.bengkelData['deskripsi'] ??
                    "Belum ada deskripsi.",
                style: const TextStyle(
                  fontSize: 16,
                ),
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              "Informasi",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),

            const SizedBox(height: 10),

            Card(
              color: Colors.grey.shade100,
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.location_on,
                          color: Colors.red,
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Text(
                            widget.bengkelData['alamat'] ??
                                '-',
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 15),

                    Row(
                      children: [
                        const Icon(
                          Icons.category,
                          color: Colors.blue,
                        ),
                        const SizedBox(width: 10),
                        Text(
                          widget.bengkelData['kategori'] ??
                              '-',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              "Lokasi",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),

            const SizedBox(height: 10),

            SizedBox(
              height: 250,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: GoogleMap(
                  initialCameraPosition: CameraPosition(
                    target: LatLng(
                      latitude,
                      longitude,
                    ),
                    zoom: 15,
                  ),
                  markers: {
                    Marker(
                      markerId: const MarkerId('bengkel'),
                      position: LatLng(
                        latitude,
                        longitude,
                      ),
                      infoWindow: InfoWindow(
                        title: widget.bengkelData['nama'],
                        snippet: widget.bengkelData['alamat'],
                      ),
                    ),
                  },
                  zoomControlsEnabled: true,
                  myLocationButtonEnabled: false,
                  mapToolbarEnabled: true,
                ),
              ),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}