import 'package:ibiapabaapp/features/categories/domain/entities/child_category.dart';

abstract class CategoriesLocalDatasource {
  Future<List<ChildCategory>> getCachedChildren(String parentId);
  Future<void> cacheChildren(String parentId, List<ChildCategory> children);
}