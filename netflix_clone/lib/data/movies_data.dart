import '../models/movie.dart';

final List<Movie> moviesData = [
  Movie(
    id: 1,
    title: "Rebel Moon",
    overview: "Lorsqu'une colonie pacifique aux confins de la galaxie se trouve menacée par les armées du tyrannique Regent Balisarius, une jeune femme au passé mystérieux est envoyée chercher des guerriers des planètes voisines pour les aider à résister.",
    posterPath: "assets/movies/rebel_moon.jpg",
    backdropPath: "assets/movies/rebel_moon_backdrop.jpg",
    voteAverage: 8.5,
    releaseDate: "2023-12-15",
    duration: "2h 14min",
    genres: ["Science-fiction", "Action", "Aventure"],
    maturityRating: "16+",
    isNetflixOriginal: true,
    videoUrl: "assets/videos/rebel_moon_trailer.mp4",
  ),
  Movie(
    id: 2,
    title: "Leave the World Behind",
    overview: "Une famille en vacances voit ses projets bouleversés lorsque deux inconnus cherchent refuge chez eux suite à une cyberattaque, les forçant tous à faire face à une catastrophe imminente.",
    posterPath: "assets/movies/leave_world_behind.jpg",
    backdropPath: "assets/movies/leave_world_behind_backdrop.jpg",
    voteAverage: 7.8,
    releaseDate: "2023-12-08",
    duration: "2h 18min",
    genres: ["Drame", "Thriller"],
    maturityRating: "16+",
    isNetflixOriginal: true,
    videoUrl: "assets/videos/leave_world_behind_trailer.mp4",
  ),
  Movie(
    id: 3,
    title: "The Killer",
    overview: "Après un accident qui tourne mal, un assassin affronte ses employeurs et lui-même, dans une chasse à l'homme internationale qu'il assure être purement professionnelle.",
    posterPath: "assets/movies/the_killer.jpg",
    backdropPath: "assets/movies/the_killer_backdrop.jpg",
    voteAverage: 7.9,
    releaseDate: "2023-11-10",
    duration: "1h 58min",
    genres: ["Action", "Thriller", "Crime"],
    maturityRating: "18+",
    isNetflixOriginal: true,
    videoUrl: "assets/videos/the_killer_trailer.mp4",
  ),
  Movie(
    id: 4,
    title: "Extraction 2",
    overview: "Après avoir miraculeusement survécu aux événements du premier film, Tyler Rake revient pour une nouvelle mission périlleuse : extraire la famille maltraitée d'un impitoyable gangster géorgien de la prison où elle est détenue.",
    posterPath: "assets/movies/extraction2.jpg",
    backdropPath: "assets/movies/extraction2_backdrop.jpg",
    voteAverage: 8.2,
    releaseDate: "2023-06-16",
    duration: "2h 03min",
    genres: ["Action", "Thriller"],
    maturityRating: "16+",
    isNetflixOriginal: true,
    videoUrl: "assets/videos/extraction2_trailer.mp4",
  ),
  Movie(
    id: 5,
    title: "Luther: Soleil déchu",
    overview: "Hanté par une affaire non résolue, le brillant mais disgracié inspecteur Luther s'évade de prison pour traquer un tueur en série qui terrorise Londres.",
    posterPath: "assets/movies/luther.jpg",
    backdropPath: "assets/movies/luther_backdrop.jpg",
    voteAverage: 7.7,
    releaseDate: "2023-03-10",
    duration: "2h 09min",
    genres: ["Crime", "Drame", "Thriller"],
    maturityRating: "16+",
    isNetflixOriginal: true,
    videoUrl: "assets/videos/luther_trailer.mp4",
  ),
  Movie(
    id: 6,
    title: "Heart of Stone",
    overview: "Une agent du renseignement d'une organisation pacifiste mondiale court à travers la planète pour empêcher une mystérieuse hackeuse de voler l'arme la plus précieuse et dangereuse de l'agence.",
    posterPath: "assets/movies/heart_of_stone.jpg",
    backdropPath: "assets/movies/heart_of_stone_backdrop.jpg",
    voteAverage: 7.5,
    releaseDate: "2023-08-11",
    duration: "2h 02min",
    genres: ["Action", "Thriller", "Espionnage"],
    maturityRating: "13+",
    isNetflixOriginal: true,
    videoUrl: "assets/videos/heart_of_stone_trailer.mp4",
  ),
];

// Films tendances
final List<Movie> trendingMovies = [moviesData[0], moviesData[1], moviesData[2]];

// Films d'action
final List<Movie> actionMovies = moviesData.where((movie) => movie.genres.contains("Action")).toList();

// Films Netflix Originals
final List<Movie> netflixOriginals = moviesData.where((movie) => movie.isNetflixOriginal).toList();

// Films populaires
final List<Movie> popularMovies = [...moviesData]..shuffle();
