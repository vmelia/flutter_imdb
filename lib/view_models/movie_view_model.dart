import 'package:flutter_imdb/models/movie.dart';

class MovieViewModel {
  final Movie movie; 

  MovieViewModel({this.movie});

  String get title {
    return this.movie.title; 
  }

  String get year {
    return this.movie.year; 
  }

  String get poster {
    return this.movie.poster; 
  }
}