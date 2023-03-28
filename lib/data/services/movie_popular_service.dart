import 'package:http/http.dart' as http;
import 'package:my_app/core/errors/exceptions.dart';
import 'package:my_app/data/models/movie_popular_model.dart';
import 'package:my_app/util/url.dart';

abstract class MoviePopularServiceType {
  Future<MoviePopularModel> requestMoviePopular();
}

class MoviePopularService implements MoviePopularServiceType {
  final http.Client client;

  MoviePopularService(this.client);

  @override
  Future<MoviePopularModel> requestMoviePopular() async {
    final url = Uri.parse(getUrl('popular'));

    final response = await client.get(url);

    if (response.statusCode == 200) {
      return moviePopularModelFromJson(response.body);
    }

    throw ServerException();
  }
}
