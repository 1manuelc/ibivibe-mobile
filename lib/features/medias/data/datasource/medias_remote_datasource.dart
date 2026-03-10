import 'package:dio/dio.dart';
import 'package:ibiapabaapp/core/network/dio_error_to_exception_mapper.dart';
import 'package:ibiapabaapp/features/medias/data/parsers/medias_parser.dart';
import 'package:ibiapabaapp/features/medias/domain/entity/media.dart';

abstract class MediasRemoteDatasource {
  Future<List<Media>> getEntityMedia({
    required EntityType entityType,
    required String entityId,
  });
}

class MediasRemoteDatasourceImpl implements MediasRemoteDatasource {
  final Dio dio;
  MediasRemoteDatasourceImpl(this.dio);

  @override
  Future<List<Media>> getEntityMedia({
    required EntityType entityType,
    required String entityId,
  }) async {
    try {
      final response = await dio.get(
        '/${entityType.pathSegment}/$entityId/media',
      );
      return MediaParser.fromJsonList(response.data);
    } on DioException catch (e) {
      throw DioErrorToExceptionMapper.map(e);
    }
  }
}
