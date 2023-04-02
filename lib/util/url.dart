class Url {
  static const String _apiKey = '54bdc95ec7d89927f8425438605834d6';

  /*
  / la función get dato un path retorna la URL valida de la api.
  / path -  path de la api
  */
  static String get(String path) {
    return 'https://api.themoviedb.org/3/movie/$path?api_key=$_apiKey';
  }

  /*
  / la función get dato un path de imagen retorna la URL de esta misma.
  / path -  path de la imagen
  */
  static String getImage(String path) {
    return 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/$path';
  }
}
