import 'package:flutter/material.dart';
import 'package:iptv_mobile/models/movies_model.dart';
import 'package:iptv_mobile/repositories/movie_repository.dart';

import '../models/gender_model.dart';

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
    notifyListeners();
  }

  void loadMoviesByTerm(String term){

    print(term);

    _isLoading = true;
    notifyListeners();

    _movies = movieRepository.getAllMoviesSearch(term);
    _isLoading = false;
    notifyListeners();
  }

  void loadMoviesByGender(Gender gender){
    _isLoading = true;
    notifyListeners();

    _movies = movieRepository.getMoviesByGender(gender);
    _isLoading = false;
    notifyListeners();
  }

  void loadMoviesByGenderSearch(Gender gender,String term){
    _isLoading = true;
    notifyListeners();

    _movies = movieRepository.getMoviesByGenderSearch(gender, term);
    _isLoading = false;
    notifyListeners();
  }
}
