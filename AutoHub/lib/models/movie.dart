import 'package:cloud_firestore/cloud_firestore.dart';

class Bengkel {
  final String id;
  final String nama;
  final String kategori;
  final String alamat;
  final String gambar;

  Bengkel({
    required this.id,
    required this.nama,
    required this.kategori,
    required this.alamat,
    required this.gambar,
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
      gambar: data['gambar'] ?? '',
    );
  }
}