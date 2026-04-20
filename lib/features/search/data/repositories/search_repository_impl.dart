import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:ibiapabaapp/core/errors/failures/failures.dart';
import 'package:ibiapabaapp/features/search/data/datasources/search_remote_datasource.dart';
import 'package:ibiapabaapp/features/search/domain/entities/search_result.dart';
import 'package:ibiapabaapp/features/search/domain/repositories/search_repository.dart';

class SearchRepositoryImpl implements SearchRepository {
  final SearchRemoteDatasource remoteDataSource;

  SearchRepositoryImpl(this.remoteDataSource);

  @override
  Future<Either<AppFailure, List<SearchResult>>> search(String query) async {
    try {
      final models = await remoteDataSource.search(query);
      return right(models.map((m) => m.toEntity()).toList());
    } on DioException catch (e) {
      return left(ServerFailure(e.message ?? 'Erro na busca'));
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }
}
