import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../models/movie.dart';
import '../screens/movie_details_screen.dart';

class ContentList extends StatelessWidget {
  final String title;
  final List<Movie> movies;

  const ContentList({
    required Key key,
    required this.title,
    this.movies = const [],
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          height: 220.0,
          child: ListView.builder(
            padding: const EdgeInsets.symmetric(
              vertical: 12.0,
              horizontal: 16.0,
            ),
            scrollDirection: Axis.horizontal,
            itemCount: movies.isEmpty ? 10 : movies.length,
            itemBuilder: (BuildContext context, int index) {
              final movie = movies.isEmpty
                  ? Movie(
                      id: index,
                      title: 'Movie $index',
                      overview: 'Description du film',
                      posterPath: '/rLb2cwF3Pazuxaj0sRXQ037tGI1.jpg',
                      backdropPath: '/rLb2cwF3Pazuxaj0sRXQ037tGI1.jpg',
                      voteAverage: 4.5,
                      releaseDate: '2024',
                      duration: '1h 36m',
                      maturityRating: '16+',
                      isNetflixOriginal: true,
                    )
                  : movies[index];

              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MovieDetailsScreen(movie: movie),
                    ),
                  );
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 8.0),
                  width: 130.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                      image: CachedNetworkImageProvider(
                        'https://image.tmdb.org/t/p/w500${movie.posterPath}',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
