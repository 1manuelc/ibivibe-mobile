import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ibiapabaapp/core/logger/handlers/controller_log_handler.dart';
import 'package:ibiapabaapp/core/logger/log_tags.dart';
import 'package:ibiapabaapp/core/logger/logger.dart';
import 'package:ibiapabaapp/features/auth/presentation/providers/session_provider.dart';
import 'package:ibiapabaapp/features/companies/domain/entities/company.dart';
import 'package:ibiapabaapp/features/companies/presentation/providers/companies_providers.dart';
import 'package:logger/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'companies_controller.g.dart';

@riverpod
class Companies extends _$Companies with ControllerLogHandler {
  @override
  Logger get logger => ref.read(loggerProvider);

  @override
  LogFeature get feature => LogFeature.companies;

  @override
  Future<List<Company>> build() async {
    final session = ref.watch(sessionProvider.select((s) => s));

    if (session == null) {
      return [];
    }

    return _fetchRemote();
  }

  Future<List<Company>> _fetchRemote() async {
    final getAllCompaniesUsecase = ref.read(getAllCompaniesProvider);
    final result = await getAllCompaniesUsecase();
    return result.fold(
      (failure) {
        logControllerError(
          action: CompanyAction.getAllCompanies,
          failure: failure,
        );
        throw Exception(failure.message);
      },
      (companies) async {
        logControllerSuccess(action: CompanyAction.getAllCompanies);
        return companies;
      },
    );
  }

  Future<void> refresh() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() => _fetchRemote());
  }
}
