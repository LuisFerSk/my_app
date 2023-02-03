import 'package:http/http.dart' as http;
import 'package:my_app/core/errors/exceptions.dart';
import 'package:my_app/data/models/movie_popular_module.dart';

abstract class MoviePopularRemoteDataSource {
  Future<MoviePopularModel> requestMoviePopular();
}

class MoviePopularRemoteDataSourceImpl implements MoviePopularRemoteDataSource {
  final http.Client client;

  MoviePopularRemoteDataSourceImpl(this.client);

  @override
  Future<MoviePopularModel> requestMoviePopular() async {
    final url = Uri.parse('https://api.themoviedb.org/3');

    final response = await client.get(url);

    if (response.statusCode == 200) {
      return moviePopularModelFromJson(response.body);
    }

    throw ServerException();
  }
}
