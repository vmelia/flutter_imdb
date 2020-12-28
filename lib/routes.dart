import 'package:flutter_imdb/pages/movie_list_page.dart';
import 'package:flutter_imdb/pages/movie_page.dart';

onGenerateRoute(settings) {
  return {
    MovieListPage.route: (context) => MovieListPage(),
    MoviePage.route: (context) => MoviePage(settings),
  };
}
