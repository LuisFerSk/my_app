import 'package:http/http.dart' as http;
import 'package:my_app/core/errors/exceptions.dart';
import 'package:my_app/data/models/movie_popular/movie_popular_model.dart';
import 'package:my_app/util/url.dart';
import 'package:my_app/data/models/server_error/server_error_model.dart';

abstract class MoviePopularServiceType {
  Future<MoviePopularModel> requestMoviePopular();
}

class MoviePopularService implements MoviePopularServiceType {
  final http.Client client;

  MoviePopularService(this.client);

  @override
  Future<MoviePopularModel> requestMoviePopular() async {
    final url = Uri.parse(Url.get('popular'));

    final response = await client.get(url);

    if (response.statusCode == 200) {
      return moviePopularModelFromJson(response.body);
    }

    if (response.statusCode == 404 || response.statusCode == 401) {
      throw ServerErrorException(serverErrorModelFromJson(response.body));
    }

    throw ServerException(response);
  }
}
