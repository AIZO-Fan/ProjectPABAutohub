import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Detail Screen masih dalam pengembangan',
        ),
      ),
    );
  }
}
// import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:autohub/models/Movie.dart';

// class MovieDetailScreen extends StatefulWidget {
//   final Movie movie;
//   const MovieDetailScreen({super.key, required this.movie});

//   @override
//   State<MovieDetailScreen> createState() => _MovieDetailScreenState();
// }

// class _MovieDetailScreenState extends State<MovieDetailScreen> {
//   bool isFavorite = false;

//   // ================== LOAD FAVORITE ==================
//   void _loadFavorite() async {
//     final prefs = await SharedPreferences.getInstance();
//     setState(() {
//       isFavorite =
//           prefs.getBool("favorite_${widget.movie.title}") ?? false;
//     });
//   }

//   // ================== TOGGLE FAVORITE ==================
//   void _toggleFavorite() async {
//     final prefs = await SharedPreferences.getInstance();
//     final newValue = !isFavorite;

//     await prefs.setBool("favorite_${widget.movie.title}", newValue);

//     setState(() {
//       isFavorite = newValue;
//       widget.movie.isFavorite = newValue; // 🔥 sinkron ke list
//     });
//   }

//   @override
//   void initState() {
//     super.initState();
//     _loadFavorite();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         title: const Text("About Film"),
//         leading: IconButton(
//           icon: const Icon(Icons.arrow_back),
//           onPressed: () => Navigator.pop(context, true),
//         ),
//       ),
//       body: SingleChildScrollView(
//         padding: const EdgeInsets.all(16),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // ================== CARD ATAS ==================
//             Container(
//               padding: const EdgeInsets.all(12),
//               decoration: BoxDecoration(
//                 color: Colors.grey.shade100,
//                 borderRadius: BorderRadius.circular(16),
//               ),
//               child: Row(
//                 children: [
//                   // Poster
//                   ClipRRect(
//                     borderRadius: BorderRadius.circular(12),
//                     child: Image.asset(
//                       widget.movie.posterAsset,
//                       width: 90,
//                       height: 130,
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                   const SizedBox(width: 12),

//                   // Info
//                   Expanded(
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Row(
//                           mainAxisAlignment:
//                               MainAxisAlignment.spaceBetween,
//                           children: [
//                             Expanded(
//                               child: Text(
//                                 widget.movie.title,
//                                 style: const TextStyle(
//                                   fontSize: 16,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                             ),
//                             IconButton(
//                               onPressed: _toggleFavorite,
//                               icon: Icon(
//                                 Icons.favorite,
//                                 color: isFavorite
//                                     ? Colors.red
//                                     : Colors.grey,
//                               ),
//                             ),
//                           ],
//                         ),
//                         Text(
//                           widget.movie.genre,
//                           style:
//                               const TextStyle(color: Colors.grey),
//                         ),
//                         const SizedBox(height: 6),
//                         Text(
//                           "Release Date : "
//                           "${widget.movie.releaseDate.day} "
//                           "${_month(widget.movie.releaseDate.month)} "
//                           "${widget.movie.releaseDate.year}",
//                           style: const TextStyle(fontSize: 12),
//                         ),
//                         const SizedBox(height: 4),
//                         Text(
//                           "Age ${widget.movie.ageRating}",
//                           style: const TextStyle(fontSize: 12),
//                         ),
//                         const SizedBox(height: 8),
//                         Row(
//                           children: const [
//                             Icon(Icons.star,
//                                 color: Colors.orange, size: 18),
//                             SizedBox(width: 4),
//                             Text(
//                               "9 /10",
//                               style: TextStyle(
//                                   fontWeight: FontWeight.bold),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),

//             const SizedBox(height: 20),

//             // ================== SINOPSIS ==================
//             const Text(
//               "Sinopsis",
//               style:
//                   TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//             ),
//             const SizedBox(height: 8),

//             Container(
//               padding: const EdgeInsets.all(14),
//               decoration: BoxDecoration(
//                 color: Colors.grey.shade100,
//                 borderRadius: BorderRadius.circular(16),
//               ),
//               child: Text(
//                 widget.movie.description,
//                 style: const TextStyle(height: 1.5),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   String _month(int m) {
//     const months = [
//       "January",
//       "February",
//       "March",
//       "April",
//       "May",
//       "June",
//       "July",
//       "August",
//       "September",
//       "October",
//       "November",
//       "December",
//     ];
//     return months[m - 1];
//   }
// }
