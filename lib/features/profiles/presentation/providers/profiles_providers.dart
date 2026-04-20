import 'package:ibiapabaapp/core/cache/cache_database_provider.dart';
import 'package:ibiapabaapp/core/logger/logger.dart';
import 'package:ibiapabaapp/core/network/dio_provider.dart';
import 'package:ibiapabaapp/features/profiles/data/datasources/profiles_local_storage.dart';
import 'package:ibiapabaapp/features/profiles/data/datasources/profiles_remote_datasource.dart';
import 'package:ibiapabaapp/features/profiles/data/repositories/profiles_repository_impl.dart';
import 'package:ibiapabaapp/features/profiles/domain/repositories/profiles_repository.dart';
import 'package:ibiapabaapp/features/profiles/domain/usecases/get_account_profiles.dart';
import 'package:ibiapabaapp/features/profiles/domain/usecases/get_profile_interests.dart';
import 'package:ibiapabaapp/features/profiles/domain/usecases/update_profile_interests.dart';
import 'package:ibiapabaapp/features/profiles/infra/profiles_remote_datasource_impl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'profiles_providers.g.dart';

/// INFRA
@riverpod
ProfilesRemoteDatasource profilesRemoteDatasource(Ref ref) {
  final dio = ref.watch(dioProvider);
  return ProfilesRemoteDatasourceImpl(dio: dio);
}

@riverpod
ProfilesLocalStorage profilesLocalStorage(Ref ref) {
  final cacheDatabaseService = ref.watch(cacheDatabaseServiceProvider);
  return ProfilesLocalStorage(cacheDatabaseService);
}

/// DATA
@riverpod
ProfilesRepository profilesRepository(Ref ref) {
  final logger = ref.read(loggerProvider);
  final remoteDatasource = ref.watch(profilesRemoteDatasourceProvider);

  return ProfilesRepositoryImpl(
    remoteDatasource: remoteDatasource,
    logger: logger,
  );
}

/// USECASES
@riverpod
GetAccountProfiles getAccountProfiles(Ref ref) {
  final repository = ref.watch(profilesRepositoryProvider);
  return GetAccountProfiles(repository: repository);
}

@riverpod
GetProfileInterests getProfileInterests(Ref ref) {
  final repository = ref.watch(profilesRepositoryProvider);
  return GetProfileInterests(repository: repository);
}

@riverpod
UpdateProfileInterests updateProfileInterests(Ref ref) {
  final repository = ref.watch(profilesRepositoryProvider);
  return UpdateProfileInterests(repository: repository);
}
