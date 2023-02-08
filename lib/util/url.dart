String getUrlImage(String path) {
  return 'https://image.tmdb.org/t/p/w185$path';
}

String getUrl(String path) {
  return 'https://api.themoviedb.org/3/movie/$path?api_key=54bdc95ec7d89927f8425438605834d6';
}
