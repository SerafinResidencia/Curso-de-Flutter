import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MoviesProvider extends ChangeNotifier {
  final String _apiKey =
      'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI3N2ZhMTE4MzBiZDJhOTRiM2U0NDdkNDNlNjQwMGE3MCIsIm5iZiI6MTc2MTE2MTIzNS4xMjQsInN1YiI6IjY4ZjkzMDEzZjBhZWQxZmI1YTQ4MzNmZiIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.-Kac_68n8zIBKO3NlRoKBKeND6lJQgNRh0Xv32eiSmM';
  final String _accepted = 'application/json';
  final String _baseUrl = 'api.themoviedb.org';
  final _language = "es-ES";

  MoviesProvider() {
    debugPrint('✅ MoviesProvider inicializado');

    this.getOnDisplayMovies();
  }

  getOnDisplayMovies() async {
    var url = Uri.https(_baseUrl, '3/movie/now_playing', {
      'language': _language,
      'page': '1',
    });

    final response = await http.get(
      url,
      headers: {
        'Authorization': _apiKey, // Bearer token en headers
        'accept': _accepted,
      },
    );

    if (response.statusCode == 200) {
      print('✅ Datos recibidos:');
      print(response.body);
    } else {
      print('❌ Error: ${response.statusCode}');
      final Map<String, dynamic> decodedData = json.decode(response.body);
      print(decodedData['dates']);
    }
  }
}
