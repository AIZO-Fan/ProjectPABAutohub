import 'package:cloud_firestore/cloud_firestore.dart';

class Bengkel {
  final String id;
  final String nama;
  final String kategori;
  final String alamat;
  final String deskripsi;
  final String image;
  final double rating;
  final bool favorite;

  Bengkel({
    required this.id,
    required this.nama,
    required this.kategori,
    required this.alamat,
    required this.deskripsi,
    required this.image,
    required this.rating,
    required this.favorite,
  });

  factory Bengkel.fromFirestore(
    DocumentSnapshot doc,
  ) {
    final data = doc.data() as Map<String, dynamic>;

    return Bengkel(
      id: doc.id,
      nama: data['nama'] ?? '',
      kategori: data['kategori'] ?? '',
      alamat: data['alamat'] ?? '',
      deskripsi: data['deskripsi'] ?? '',
      image: data['image'] ?? '',
      rating: (data['rating'] ?? 0).toDouble(),
      favorite: data['favorite'] ?? false,
    );
  }
}