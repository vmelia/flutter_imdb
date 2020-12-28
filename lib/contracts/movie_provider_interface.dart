import 'package:flutter_imdb/models/movie.dart';

abstract class MovieProviderInterface {
  Future<List<Movie>> fetchMovies(String keyword);
}