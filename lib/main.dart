import 'package:flutter/material.dart';
import 'package:flutter_imdb/pages/movie_page.dart';
import 'package:provider/provider.dart';
import 'locator.dart';
import 'view_models/movie_list_view_model.dart';
import 'pages/movie_list_page.dart';

void main() {
  setupLocator();
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: (settings) {
        if (settings.name == MoviePage.route) {
          return MaterialPageRoute(builder: (context) {
            return MoviePage(settings.arguments);
          });
        }

        return null;
      },
      title: "Movies",
      home: ChangeNotifierProvider(
        create: (context) => MovieListViewModel(),
        child: MovieListPage(),
      ),
    );
  }
}
