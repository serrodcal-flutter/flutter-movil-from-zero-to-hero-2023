import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cinemapedia_app/infrastructure/datasources/moviedb_datasource.dart';
import 'package:cinemapedia_app/infrastructure/repositories/movie_repository_impl.dart';

final moviesRepositoryProvider = Provider((ref) {
  return MovieRepositoryImpl(MovieDBDatasource());
});
