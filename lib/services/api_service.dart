import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:uiclone1/models/movie.dart';

class ApiService {
  static const String baseUrl = "https://movies-api.nomadcoders.workers.dev";
  static const String popular = "popular";
  static const String nowPlaying = "now-playing";
  static const String comingSoon = "coming-soon";

  static Future<List<MovieModel>> getPopularMovies() async {
    List<MovieModel> movieInstances = [];

    final url = Uri.parse('$baseUrl/$popular');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final fulInfo = jsonDecode(response.body);
      final List<dynamic> movies = fulInfo["results"];
      for (var movie in movies) {
        movieInstances.add(MovieModel.fromJson(movie));
      }
      return movieInstances;
    }
    throw Error();
  }

  // static Future<List<MovieModel>> getNowPlayings() async {
  //   List<MovieModel> movieInstances = [];

  //   final url = Uri.parse('$baseUrl/$nowPlaying');
  //   final response = await http.get(url);

  //   if (response.statusCode == 200) {
  //     final fulInfo = jsonDecode(response.body);
  //     final List<dynamic> movies = fulInfo["results"];
  //     for (var movie in movies) {
  //       movieInstances.add(MovieModel.fromJson(movie));
  //     }
  //     return movieInstances;
  //   }
  //   throw Error();
  // }

  // static Future<List<MovieModel>> getcomingSoons() async {
  //   List<MovieModel> movieInstances = [];

  //   final url = Uri.parse('$baseUrl/$comingSoon');
  //   final response = await http.get(url);

  //   if (response.statusCode == 200) {
  //     final fulInfo = jsonDecode(response.body);
  //     final List<dynamic> movies = fulInfo["results"];
  //     for (var movie in movies) {
  //       movieInstances.add(MovieModel.fromJson(movie));
  //     }
  //     return movieInstances;
  //   }
  //   throw Error();
  // }
}
