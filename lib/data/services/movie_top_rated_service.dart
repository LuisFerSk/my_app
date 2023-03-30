import 'package:http/http.dart' as http;
import 'package:my_app/core/errors/exceptions.dart';
import 'package:my_app/data/models/movie_top_rated/movie_top_rated_model.dart';
import 'package:my_app/util/url.dart';

abstract class MovieTopRatedServiceType {
  Future<MovieTopRatedModel> requestMovieTopRated();
}

class MovieTopRatedService implements MovieTopRatedServiceType {
  final http.Client client;

  MovieTopRatedService(this.client);

  @override
  Future<MovieTopRatedModel> requestMovieTopRated() async {
    final url = Uri.parse(getUrl('top_rated'));

    final response = await client.get(url);

    if (response.statusCode == 200) {
      return movieTopRatedModelFromJson(response.body);
    }

    throw ServerException(response);
  }
}
