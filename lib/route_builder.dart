import 'package:flutter/material.dart';

import 'pages/movie_page.dart';

class RouteBuilder{
    MaterialPageRoute generateRoute(BuildContext context, RouteSettings routeSettings){
        if (routeSettings.name == MoviePage.route) {
          return MaterialPageRoute(builder: (context) {
            return MoviePage(routeSettings.arguments);
          });
        }

        return null;
    }
}