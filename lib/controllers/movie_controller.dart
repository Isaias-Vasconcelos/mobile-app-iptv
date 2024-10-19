import 'package:flutter/material.dart';
import 'package:iptv_mobile/models/movies_model.dart';
import 'package:iptv_mobile/repositories/movie_repository.dart';

class MovieController extends ChangeNotifier {
  MovieRepository movieRepository;

  MovieController({required this.movieRepository});

  List<Movies> _movies = [];
  bool _isLoading = false;

  List<Movies> get movies => _movies;

  bool get isLoading => _isLoading;

  loadMovies() {
    _isLoading = true;
    notifyListeners();

    _movies = movieRepository.getAllMovies();
    _isLoading = false;
  }
}
