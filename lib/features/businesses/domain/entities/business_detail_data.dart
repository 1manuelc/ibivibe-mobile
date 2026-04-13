import 'package:ibiapabaapp/features/businesses/domain/entities/business.dart';
import 'package:ibiapabaapp/features/medias/domain/entity/media.dart';

class BusinessDetailData {
  final Business business;
  final List<Media> media;
  const BusinessDetailData({required this.business, required this.media});
}
