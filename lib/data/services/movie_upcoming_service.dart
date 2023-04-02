import 'package:http/http.dart' as http;
import 'package:my_app/core/errors/exceptions.dart';
import 'package:my_app/data/models/movie_upcoming/movie_upcoming_model.dart';
import 'package:my_app/data/models/server_error/server_error_model.dart';
import 'package:my_app/util/url.dart';

abstract class MovieUpcomingServiceType {
  Future<MovieUpcomingModel> requestMovieUpcoming();
}

class MovieUpcomingService implements MovieUpcomingServiceType {
  final http.Client client;

  MovieUpcomingService(this.client);

  @override
  Future<MovieUpcomingModel> requestMovieUpcoming() async {
    final url = Uri.parse(Url.get('upcoming'));

    final response = await client.get(url);

    if (response.statusCode == 200) {
      return movieUpcomingModelFromJson(response.body);
    }

    if (response.statusCode == 404 || response.statusCode == 401) {
      throw ServerErrorException(serverErrorModelFromJson(response.body));
    }

    throw ServerException(response);
  }
}
