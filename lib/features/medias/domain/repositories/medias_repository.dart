import 'package:dartz/dartz.dart';
import 'package:ibiapabaapp/core/errors/failures/failures.dart';
import 'package:ibiapabaapp/features/medias/domain/entity/media.dart';

abstract class MediasRepository {
  Future<Either<Failure, List<Media>>> getEntityMedia({
    required EntityType entityType,
    required String entityId,
  });
}
