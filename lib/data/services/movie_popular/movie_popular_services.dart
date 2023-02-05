import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:my_app/core/errors/exceptions.dart';
import 'package:my_app/data/models/movie_popular_module.dart';

abstract class AbstractMoviePopularService {
  Future<MoviePopularModel> requestMoviePopular();
}

class MoviePopularService implements AbstractMoviePopularService {
  final http.Client client;

  MoviePopularService(this.client);

  @override
  Future<MoviePopularModel> requestMoviePopular() async {
    final url = Uri.parse(
      'https://api.themoviedb.org/3/movie/popular?api_key=54bdc95ec7d89927f8425438605834d6',
    );

    final response = await client.get(url);

    if (response.statusCode == 200) {
      return moviePopularModelFromJson(response.body);
    }

    throw ServerException();
  }
}
