import 'package:ibiapabaapp/features/categories/domain/entities/category_entity.dart';
import 'package:ibiapabaapp/features/categories/domain/entities/child_category.dart';
import 'package:ibiapabaapp/features/categories/domain/entities/parent_category.dart';

abstract class CategoriesRemoteDatasource {
  Future<List<ParentCategory>> getParentCategories({CategoryEntity? entity});
  Future<List<ChildCategory>> getChildrenCategories({
    required String parentId,
    CategoryEntity? entity,
  });
}
