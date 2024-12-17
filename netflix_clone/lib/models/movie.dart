class Movie {
  final int id;
  final String title;
  final String overview;
  final String posterPath;
  final String backdropPath;
  final double voteAverage;
  final String releaseDate;
  final String duration;
  final List<String> genres;
  final String maturityRating;
  final bool isNetflixOriginal;
  final String videoUrl;

  Movie({
    required this.id,
    required this.title,
    required this.overview,
    required this.posterPath,
    required this.backdropPath,
    required this.voteAverage,
    required this.releaseDate,
    this.duration = '',
    this.genres = const [],
    this.maturityRating = '',
    this.isNetflixOriginal = false,
    this.videoUrl = '',
  });

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      id: json['id'],
      title: json['title'] ?? json['name'] ?? '',
      overview: json['overview'] ?? '',
      posterPath: json['poster_path'] ?? '',
      backdropPath: json['backdrop_path'] ?? '',
      voteAverage: (json['vote_average'] as num?)?.toDouble() ?? 0.0,
      releaseDate: json['release_date'] ?? json['first_air_date'] ?? '',
      duration: json['runtime']?.toString() ?? '',
      genres: (json['genres'] as List<dynamic>?)
          ?.map((genre) => genre['name'] as String)
          .toList() ?? [],
      maturityRating: json['maturity_rating'] ?? '',
      isNetflixOriginal: json['is_netflix_original'] ?? false,
      videoUrl: json['video_url'] ?? '',
    );
  }
}
