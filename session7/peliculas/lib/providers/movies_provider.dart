import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:peliculas/models/models.dart';

class MoviesProvider extends ChangeNotifier {
  final String _apiKey =
      'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI3N2ZhMTE4MzBiZDJhOTRiM2U0NDdkNDNlNjQwMGE3MCIsIm5iZiI6MTc2MTE2MTIzNS4xMjQsInN1YiI6IjY4ZjkzMDEzZjBhZWQxZmI1YTQ4MzNmZiIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.-Kac_68n8zIBKO3NlRoKBKeND6lJQgNRh0Xv32eiSmM';
  final String _accepted = 'application/json';
  final String _baseUrl = 'api.themoviedb.org';
  final _language = "es-ES";
  List<Movie> onDisplayMovies = [];
  List<Movie> popularMovies = [];

  Map<int, List<Cast>> moviesCast = {};
  int _popularPage = 0;

  MoviesProvider() {
    debugPrint('✅ MoviesProvider inicializado');

    getOnDisplayMovies();
    getPopularMovies();
  }

  Future<String> _getJsonData(String endPoint, [int page = 1]) async {
    var url = Uri.https(_baseUrl, endPoint, {
      'language': _language,
      'page': '$page',
    });

    final response = await http.get(
      url,
      headers: {
        'Authorization': _apiKey, // Bearer token en headers
        'accept': _accepted,
      },
    );
    print('🌐 Solicitando: $url');
    print(response);
    //print('✅ Datos recibidos:');
    //print(response.body);
    return response.body;
  }

  getOnDisplayMovies() async {
    final jsonData = await _getJsonData('3/movie/now_playing');
    final nowPlayingResponse = NowPlayingResponse.fromJson(jsonData);

    onDisplayMovies = nowPlayingResponse.results;
    notifyListeners();
  }

  getPopularMovies() async {
    _popularPage++;

    final jsonData = await _getJsonData('3/movie/popular', _popularPage);
    final popularResponse = PopularResponse.fromJson(jsonData);

    popularMovies = [...popularMovies, ...popularResponse.results];
    notifyListeners();
  }

  Future<List<Cast>> getMovieCast(int movieId) async {
    print('PIDIENDO CAST AL SERVIDOR');

    if (moviesCast.containsKey(movieId)) return moviesCast[movieId]!;
    print('🎬 movieId recibido: $movieId');
    final jsonData = await _getJsonData('3/movie/$movieId/credits');
    print('📦 JSON recibido: $jsonData');
    final creditsResponse = CreditsResponse.fromJson(jsonData);
    moviesCast[movieId] = creditsResponse.cast;
    return creditsResponse.cast;
  }
}
