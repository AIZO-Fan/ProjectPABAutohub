import 'package:provider/provider.dart';
import 'package:autohub/providers/theme_provider.dart';
import 'package:autohub/providers/language_provider.dart';

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

// IMPORT KE HALAMAN LOGIN
import 'sign_in_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  String name = 'Unknown User';
  String email = '-';
  File? _profileImage;

  @override
  void initState() {
    super.initState();
    _loadUserData();
  }

  Future<void> _loadUserData() async {
  final user = FirebaseAuth.instance.currentUser;

  if (user == null) return;

  setState(() {
    name = user.displayName ?? 'User';
    email = user.email ?? '-';
  });
}

  // ================= LOGOUT FUNCTION =================
  Future<void> _logout() async {
  await FirebaseAuth.instance.signOut();

  if (!mounted) return;

  Navigator.pushNamedAndRemoveUntil(
    context,
    '/signin',
    (route) => false,
  );
}

  // =============== KONFIRMASI LOGOUT =================
  void _confirmLogout() {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text('Logout'),
        content: const Text('Apakah kamu yakin ingin logout?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Batal'),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              _logout();
            },
            child: const Text('Logout'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final languageProvider = Provider.of<LanguageProvider>(context);
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Profile'),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),

      // ================= FIX OVERFLOW DI SINI =================
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(bottom: 30),
        child: Column(
          children: [
            const SizedBox(height: 30),

            // FOTO PROFIL
            GestureDetector(
              onTap: _pickImage,
              child: CircleAvatar(
                radius: 60,
                backgroundColor: Colors.grey[200],
                backgroundImage: _profileImage != null
                    ? FileImage(_profileImage!)
                    : const AssetImage('assets/images/profile.jpg') as ImageProvider,
                child: _profileImage == null
                    ? const Icon(Icons.camera_alt, color: Colors.grey)
                    : null,
              ),
            ),

            const SizedBox(height: 30),

            _infoCard(icon: Icons.person, text: name),
            const SizedBox(height: 16),
            _infoCard(icon: Icons.email, text: email),

            const SizedBox(height: 40),

            const SizedBox(height: 30),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Card(
                child: Column(
                  children: [

                    ListTile(
                      leading: const Icon(Icons.dark_mode),
                      title: const Text('Dark Mode'),
                      trailing: Switch(
                        value: themeProvider.themeMode == ThemeMode.dark,
                        onChanged: (value) {
                          themeProvider.toggleTheme(value);
                        },
                      ),
                    ),

                    const Divider(height: 1),

                    ListTile(
                      leading: const Icon(Icons.language),
                      title: const Text('Bahasa'),
                      trailing: DropdownButton<String>(
                        value: languageProvider.locale.languageCode,
                        underline: const SizedBox(),
                        items: const [
                          DropdownMenuItem(
                            value: 'id',
                            child: Text('Indonesia'),
                          ),
                          DropdownMenuItem(
                            value: 'en',
                            child: Text('English'),
                          ),
                        ],
                        onChanged: (value) {
                          if (value != null) {
                            languageProvider.changeLanguage(value);
                          }
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 40),
            // ================= TOMBOL LOGOUT =================
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: _confirmLogout,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Text(
                    'Logout',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _pickImage() async {
    final picker = ImagePicker();
    final picked = await picker.pickImage(
      source: ImageSource.gallery,
      imageQuality: 80,
    );

    if (picked != null) {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString('profile_image', picked.path);

      setState(() {
        _profileImage = File(picked.path);
      });
    }
  }

  Widget _infoCard({required IconData icon, required String text}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Container(
        height: 55,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: Colors.grey.shade300),
        ),
        child: Row(
          children: [
            Icon(icon),
            const SizedBox(width: 12),
            Text(
              text,
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
