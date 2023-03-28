import 'package:http/http.dart' as http;
import 'package:my_app/core/errors/exceptions.dart';
import 'package:my_app/data/models/movie_detail_model.dart';
import 'package:my_app/util/url.dart';

abstract class MovieDetailServiceType {
  Future<MovieDetailModel> requestMovieDetail(int id);
}

class MovieDetailService implements MovieDetailServiceType {
  final http.Client client;

  MovieDetailService(this.client);

  @override
  Future<MovieDetailModel> requestMovieDetail(int id) async {
    final url = Uri.parse(getUrl(id.toString()));

    final response = await client.get(url);

    if (response.statusCode == 200) {
      return movieDetailFromJson(response.body);
    }

    throw ServerException();
  }
}
