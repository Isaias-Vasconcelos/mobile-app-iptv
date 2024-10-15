import 'package:flutter/material.dart';
import 'package:iptv_mobile/mocks/movies/movies_mock.dart';

class MoviesDetailsScreen extends StatelessWidget {
  late String moviePhotoUrl;
  late String movieTitle;
  late int year;
  late String platformName;
  late String movieDescription;
  late String movieUrl;

  final mockMovie = MoviesMock().mockMoviesList[0];

  MoviesDetailsScreen({super.key}) {
    moviePhotoUrl = mockMovie.photoUrl;
    movieTitle = mockMovie.title;
    year = mockMovie.year;
    platformName = mockMovie.platform.name;
    movieDescription = mockMovie.description;
    movieUrl = mockMovie.movieUrl;
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
