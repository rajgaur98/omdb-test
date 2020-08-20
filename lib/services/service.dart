import 'dart:convert';
import 'package:http/http.dart';
import 'package:omdb/models/movie.dart';

class Service{

  Future<List<Movie>> getMovies() async {
    String url = "https://www.omdbapi.com/?s=Movies&apikey=5661d041";
    Response response = await get(url);
    final jsonResponse = json.decode(response.body);
    return MovieList.fromJson(jsonResponse["Search"]).movieList;
  }

}