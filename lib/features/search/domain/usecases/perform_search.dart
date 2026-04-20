import 'package:dartz/dartz.dart';
import 'package:ibiapabaapp/core/errors/failures/failures.dart';
import 'package:ibiapabaapp/features/search/domain/entities/search_result.dart';
import 'package:ibiapabaapp/features/search/domain/repositories/search_repository.dart';

class PerformSearch {
  final SearchRepository repository;

  PerformSearch(this.repository);

  Future<Either<AppFailure, List<SearchResult>>> call(String query) {
    if (query.isEmpty) return Future.value(right([]));
    return repository.search(query);
  }
}
