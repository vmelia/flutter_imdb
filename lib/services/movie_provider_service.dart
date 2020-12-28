import 'dart:convert';
import 'package:flutter_imdb/contracts/movie_provider_interface.dart';
import 'package:flutter_imdb/models/movie.dart';
import 'package:http/http.dart' as http;

class MovieProviderService implements MovieProviderInterface{
  Future<List<Movie>> fetchMovies(String keyword) async {
    final url = "http://www.omdbapi.com/?s=$keyword&apikey=4adb0fc2";
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final body = jsonDecode(response.body);
      final Iterable json = body["Search"];
      return json.map((movie) => Movie.fromJson(movie)).toList();
    } else {
      throw Exception("Unable to perform request!");
    }
  }
}
