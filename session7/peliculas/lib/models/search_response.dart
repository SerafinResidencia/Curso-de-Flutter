import 'dart:convert';

import 'package:peliculas/models/models.dart';

class SerachResponse {
  int page;
  List<Movie> results;
  int totalPages;
  int totalResults;

  SerachResponse({
    required this.page,
    required this.results,
    required this.totalPages,
    required this.totalResults,
  });

  factory SerachResponse.fromJson(String str) =>
      SerachResponse.fromMap(json.decode(str));

  factory SerachResponse.fromMap(Map<String, dynamic> json) => SerachResponse(
    page: json["page"],
    results: List<Movie>.from(json["results"].map((x) => Movie.fromMap(x))),
    totalPages: json["total_pages"],
    totalResults: json["total_results"],
  );
}
