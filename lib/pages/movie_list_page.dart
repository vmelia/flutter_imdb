import 'package:flutter/material.dart';
import 'package:flutter_imdb/models/movie_list.dart';
import 'package:flutter_imdb/view_models/movie_list_view_model.dart';
import 'package:provider/provider.dart';

class MovieListPage extends StatefulWidget {
  static String route = "MovieListPage";

  @override
  _MovieListPageState createState() => _MovieListPageState();
}

class _MovieListPageState extends State<MovieListPage> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<MovieListViewModel>(context);

    return Scaffold(
      appBar: AppBar(title: Text("Movies")),
      body: Container(
        padding: EdgeInsets.all(10),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 10),
              decoration: BoxDecoration(
                  color: Colors.grey, borderRadius: BorderRadius.circular(10)),
              child: Stack(alignment: Alignment.centerRight, children: [
                TextField(
                  controller: _controller,
                  onSubmitted: (value) {
                    if (value.isNotEmpty) {
                      vm.fetchMovies(value);
                      _controller.clear();
                    }
                  },
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: "Search",
                    hintStyle: TextStyle(color: Colors.white),
                    border: InputBorder.none,
                  ),
                ),
                IconButton(
                    icon: Icon(Icons.search),
                    color: Colors.white,
                    onPressed: () {
                      if (_controller.text.isNotEmpty) {
                        vm.fetchMovies(_controller.text);
                        _controller.clear();
                      }
                    }),
              ]),
            ),
            Expanded(child: MovieList(movies: vm.movies)),
          ],
        ),
      ),
    );
  }
}
