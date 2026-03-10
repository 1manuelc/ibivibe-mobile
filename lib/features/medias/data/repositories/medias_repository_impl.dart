import 'package:dartz/dartz.dart';
import 'package:ibiapabaapp/core/errors/exceptions/exceptions.dart';
import 'package:ibiapabaapp/core/errors/exceptions/global_exception_to_failure_mapper.dart';
import 'package:ibiapabaapp/core/errors/failures/failures.dart';
import 'package:ibiapabaapp/core/logger/log_tags.dart';
import 'package:ibiapabaapp/core/logger/logger.dart';
import 'package:ibiapabaapp/features/medias/data/datasource/medias_remote_datasource.dart';
import 'package:ibiapabaapp/features/medias/domain/entity/media.dart';
import 'package:ibiapabaapp/features/medias/domain/repositories/medias_repository.dart';

class MediasRepositoryImpl implements MediasRepository {
  final MediasRemoteDatasource remoteDatasource;

  MediasRepositoryImpl({required this.remoteDatasource});

  Failure _handleError(dynamic e, StackTrace stack, String tag) {
    final code = e is AppException ? e.code : null;
    logger.e(
      '${LogTags.repository}${LogTags.cities}$tag',
      error: {
        'exception': e.runtimeType.toString(),
        'code': code,
        'message': e.toString(),
      },
      stackTrace: stack,
    );

    // TODO: MediaExceptionToFailureMapper para erros específicos da funcionalidade
    return GlobalExceptionToFailureMapper.map(e);
  }

  @override
  Future<Either<Failure, List<Media>>> getEntityMedia({
    required EntityType entityType,
    required String entityId,
  }) async {
    try {
      final media = await remoteDatasource.getEntityMedia(
        entityType: entityType,
        entityId: entityId,
      );
      return Right(media);
    } catch (e, stack) {
      return Left(_handleError(e, stack, LogTags.getCityMedia));
    }
  }
}
