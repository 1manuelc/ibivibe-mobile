import 'package:ibiapabaapp/features/businesses/domain/entities/business.dart';

abstract class BusinessesRemoteDatasource {
  Future<List<Business>> getAllBusinesses();
  Future<Business> getBusinessById(String id);
}
