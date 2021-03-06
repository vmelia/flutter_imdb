import 'package:flutter/material.dart';
import 'package:flutter_imdb/view_models/movie_view_model.dart';

class MoviePage extends StatefulWidget {
  static String route = "MoviePage";
  final MovieViewModel movieViewModel;

  MoviePage(this.movieViewModel);

  @override
  _MoviePageState createState() => _MoviePageState();
}

class _MoviePageState extends State<MoviePage> {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
        autofocus: true,
        clipBehavior: Clip.none,
        child: Image.network(widget.movieViewModel.poster),
        onPressed: () => Navigator.pop(context));
  }
}
