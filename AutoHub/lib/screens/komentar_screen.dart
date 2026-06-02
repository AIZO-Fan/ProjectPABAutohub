import 'dart:io';

import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';

class KomentarScreen extends StatefulWidget {
  final String documentId;
  final String namaBengkel;
  

  const KomentarScreen({
    super.key,
    required this.documentId,
    required this.namaBengkel,
  });

  @override
  State<KomentarScreen> createState() => _KomentarScreenState();
}

class _KomentarScreenState extends State<KomentarScreen> {
  final TextEditingController komentarController =
      TextEditingController();
  User? get user => FirebaseAuth.instance.currentUser;
  Widget buildRatingSelector() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: List.generate(
      5,
      (index) => IconButton(
        onPressed: () {
          setState(() {
            rating = (index + 1).toDouble();
          });
        },
        icon: Icon(
          index < rating
              ? Icons.star
              : Icons.star_border,
          color: Colors.amber,
          size: 35,
        ),
      ),
    ),
  );
}

  double rating = 5;
  File? selectedImage;
  bool loading = false;

  Future<void> pickImage() async {
    final picker = ImagePicker();

    final image = await picker.pickImage(
      source: ImageSource.gallery,
    );

    if (image != null) {
      setState(() {
        selectedImage = File(image.path);
      });
    }
  }

  Future<void> uploadKomentar() async {
    if (komentarController.text.trim().isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Komentar tidak boleh kosong"),
        ),
      );
      return;
    }

    setState(() {
      loading = true;
    });

    try {
      String imageUrl = "";

      if (selectedImage != null) {
        final fileName =
            DateTime.now().millisecondsSinceEpoch.toString();

        final ref = FirebaseStorage.instance
            .ref()
            .child("komentar")
            .child(fileName);

        await ref.putFile(selectedImage!);

        imageUrl = await ref.getDownloadURL();
      }

      await FirebaseAuth.instance.currentUser?.reload();

      final currentUser =
          FirebaseAuth.instance.currentUser;

      final namaUser =
          currentUser?.displayName?.isNotEmpty == true
              ? currentUser!.displayName!
              : currentUser?.email?.split('@').first ?? "Guest";

      print("UID: ${user?.uid}");
print("Email: ${user?.email}");
print("Display Name: ${user?.displayName}");

await FirebaseFirestore.instance
    .collection("bengkel")
    .doc(widget.documentId)
    .collection("komentar")
    .add({
  "namaUser": user?.displayName ?? "Guest",
  "komentar": komentarController.text.trim(),
  "rating": rating,
  "imageUrl": imageUrl,
  "createdAt": Timestamp.now(),
});

      komentarController.clear();

      setState(() {
        selectedImage = null;
        rating = 5;
      });

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Komentar berhasil dikirim"),
        ),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            "Gagal upload komentar: $e",
          ),
        ),
      );
    }

    setState(() {
      loading = false;
    });
  }

  Widget buildStars(double ratingValue) {
    return Row(
      children: List.generate(
        5,
        (index) => Icon(
          index < ratingValue
              ? Icons.star
              : Icons.star_border,
          color: Colors.orange,
          size: 20,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        title: Text(
          "Komentar ${widget.namaBengkel}",
        ),
      ),

      body: Column(
        children: [
          Expanded(
            child: StreamBuilder<QuerySnapshot>(
              stream: FirebaseFirestore.instance
                  .collection("bengkel")
                  .doc(widget.documentId)
                  .collection("komentar")
                  .orderBy(
                    "createdAt",
                    descending: true,
                  )
                  .snapshots(),
              builder: (context, snapshot) {
                if (snapshot.connectionState ==
                    ConnectionState.waiting) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }

                if (!snapshot.hasData ||
                    snapshot.data!.docs.isEmpty) {
                  return const Center(
                    child: Text(
                      "Belum ada komentar",
                    ),
                  );
                }

                final docs = snapshot.data!.docs;

                return ListView.builder(
                  itemCount: docs.length,
                  itemBuilder: (context, index) {
                    final data =
                        docs[index].data()
                            as Map<String, dynamic>;

                    return Card(
                      margin: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 6,
                      ),
                      child: Padding(
                        padding:
                            const EdgeInsets.all(12),
                        child: Column(
                          crossAxisAlignment:
                              CrossAxisAlignment.start,
                          children: [
                            Text(
                              data["namaUser"] ??
                                  "Guest",
                              style:
                                  const TextStyle(
                                fontWeight:
                                    FontWeight.bold,
                              ),
                            ),

                            const SizedBox(height: 5),

                            buildStars(
                              (data["rating"] ?? 0)
                                  .toDouble(),
                            ),

                            const SizedBox(height: 10),

                            Text(
                              data["komentar"] ??
                                  "",
                            ),

                            const SizedBox(height: 10),

                            if ((data["imageUrl"] ??
                                    "")
                                .toString()
                                .isNotEmpty)
                              ClipRRect(
                                borderRadius:
                                    BorderRadius
                                        .circular(
                                  10,
                                ),
                                child: Image.network(
                                  data["imageUrl"],
                                  height: 180,
                                  width:
                                      double.infinity,
                                  fit:
                                      BoxFit.cover,
                                ),
                              ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),

          Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.grey.shade100,
              border: Border(
                top: BorderSide(
                  color: Colors.grey.shade300,
                ),
              ),
            ),
            child: Column(
              children: [
                const Align(
                  alignment:
                      Alignment.centerLeft,
                  child: Text(
                    "Rating",
                    style: TextStyle(
                      fontWeight:
                          FontWeight.bold,
                    ),
                  ),
                ),

                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Berikan Rating",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),

                const SizedBox(height: 10),

                buildRatingSelector(),

                Text(
                  "${rating.toInt()}/5",
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                TextField(
                  controller:
                      komentarController,
                  maxLines: 3,
                  decoration:
                      const InputDecoration(
                    hintText:
                        "Tulis komentar...",
                    border:
                        OutlineInputBorder(),
                  ),
                ),

                const SizedBox(height: 10),

                if (selectedImage != null)
                  ClipRRect(
                    borderRadius:
                        BorderRadius.circular(
                      10,
                    ),
                    child: Image.file(
                      selectedImage!,
                      height: 120,
                    ),
                  ),

                const SizedBox(height: 10),

                Row(
                  children: [
                    Expanded(
                      child:
                          OutlinedButton.icon(
                        onPressed:
                            pickImage,
                        icon: const Icon(
                          Icons.image,
                        ),
                        label: const Text(
                          "Gambar",
                        ),
                      ),
                    ),

                    const SizedBox(width: 10),

                    Expanded(
                      child:
                          ElevatedButton.icon(
                        onPressed: loading
                            ? null
                            : uploadKomentar,
                        icon: loading
                            ? const SizedBox(
                                width: 18,
                                height: 18,
                                child:
                                    CircularProgressIndicator(
                                  strokeWidth:
                                      2,
                                ),
                              )
                            : const Icon(
                                Icons.send,
                              ),
                        label: const Text(
                          "Kirim",
                        ),
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
  }
}