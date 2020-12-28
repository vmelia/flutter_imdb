import 'package:flutter/material.dart';
import 'package:flutter_imdb/contracts/movie_provider_interface.dart';
import '../locator.dart';
import 'movie_view_model.dart';

class MovieListViewModel extends ChangeNotifier {
  List<MovieViewModel> movies = List<MovieViewModel>();

  Future<void> fetchMovies(String keyword) async {
    var movieProvider = locator<MovieProviderInterface>();
    final results = await movieProvider.fetchMovies(keyword);
    this.movies = results.map((item) => MovieViewModel(movie: item)).toList();
    print(this.movies);
    notifyListeners();
  }
}