import 'package:ibiapabaapp/core/logger/logger.dart';
import 'package:ibiapabaapp/core/network/dio_provider.dart';
import 'package:ibiapabaapp/features/businesses/data/datasource/businesses_local_datasource.dart';
import 'package:ibiapabaapp/features/businesses/data/datasource/businesses_remote_datasource.dart';
import 'package:ibiapabaapp/features/businesses/data/repositories/businesses_repository_impl.dart';
import 'package:ibiapabaapp/features/businesses/domain/repositories/business_repository.dart';
import 'package:ibiapabaapp/features/businesses/domain/usecases/get_all_businesses.dart';
import 'package:ibiapabaapp/features/businesses/domain/usecases/get_business_by_id.dart';
import 'package:ibiapabaapp/features/businesses/infra/businesses_local_datasource_impl.dart';
import 'package:ibiapabaapp/features/businesses/infra/businesses_remote_datasource_impl.dart';
import 'package:ibiapabaapp/core/cache/cache_database_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'businesses_providers.g.dart';

// DATA
@riverpod
BusinessesRemoteDatasource businessesRemoteDatasource(Ref ref) {
  final dio = ref.watch(dioProvider);
  return BusinessesRemoteDatasourceImpl(dio);
}

@riverpod
BusinessesLocalDatasource businessesLocalDatasource(Ref ref) {
  final cacheService = ref.watch(cacheDatabaseServiceProvider);
  return BusinessesLocalDatasourceImpl(cacheService: cacheService);
}

@riverpod
BusinessesRepository businessesRepository(Ref ref) {
  final logger = ref.watch(loggerProvider);
  final remoteDatasource = ref.watch(businessesRemoteDatasourceProvider);
  final localDatasource = ref.watch(businessesLocalDatasourceProvider);

  return BusinessesRepositoryImpl(
    remoteDatasource: remoteDatasource,
    localDatasource: localDatasource,
    logger: logger,
  );
}

// USECASES
@riverpod
GetAllBusinesses getAllBusinesses(Ref ref) {
  final repository = ref.watch(businessesRepositoryProvider);
  return GetAllBusinesses(repository);
}

@riverpod
GetBusinessById getBusinessById(Ref ref) {
  final repository = ref.watch(businessesRepositoryProvider);
  return GetBusinessById(repository);
}
