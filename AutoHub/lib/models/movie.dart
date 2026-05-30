class Movie {
  String title;
  String genre;
  String director;
  String description;
  DateTime releaseDate;
  String duration;
  String ageRating; // contoh: "13+", "17+"
  String posterAsset;
  List<String> imageUrls;
  bool isFavorite;

  Movie({
    required this.title,
    required this.genre,
    required this.director,
    required this.description,
    required this.releaseDate,
    required this.duration,
    required this.ageRating,
    required this.posterAsset,
    required this.imageUrls,
    required this.isFavorite,
  });
}
