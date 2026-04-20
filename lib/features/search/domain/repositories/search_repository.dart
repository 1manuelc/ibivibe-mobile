import 'package:dartz/dartz.dart';
import 'package:ibiapabaapp/core/errors/failures/failures.dart';
import 'package:ibiapabaapp/features/search/domain/entities/search_result.dart';

abstract class SearchRepository {
  Future<Either<AppFailure, List<SearchResult>>> search(String query);
}
