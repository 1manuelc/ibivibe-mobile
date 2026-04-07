import 'package:dartz/dartz.dart';
import 'package:ibiapabaapp/core/errors/failures/failures.dart';
import 'package:ibiapabaapp/features/categories/domain/entities/category_entity.dart';
import 'package:ibiapabaapp/features/categories/domain/entities/child_category.dart';
import 'package:ibiapabaapp/features/categories/domain/entities/parent_category.dart';

abstract class CategoriesRepository {
  Future<Either<AppFailure, List<ParentCategory>>> getParentCategories({
    bool forceRefresh = false,
    CategoryEntity? entity,
  });
  Future<Either<AppFailure, List<ChildCategory>>> getChildrenCategories({
    required String parentId,
    bool forceRefresh = false,
    CategoryEntity? entity,
  });
}
