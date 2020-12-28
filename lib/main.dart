import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'locator.dart';
import 'route_builder.dart';
import 'view_models/movie_list_view_model.dart';
import 'pages/movie_list_page.dart';

void main() {
  setupLocator();
  runApp(App());
}

class App extends StatelessWidget {
  final RouteBuilder routeBuilder = RouteBuilder();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: (settings) {
        return routeBuilder.generateRoute(context, settings);
      },
      title: "Movies",
      home: ChangeNotifierProvider(
        create: (context) => MovieListViewModel(),
        child: MovieListPage(),
      ),
    );
  }
}
