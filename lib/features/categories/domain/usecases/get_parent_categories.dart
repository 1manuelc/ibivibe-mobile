import 'package:dartz/dartz.dart';
import 'package:ibiapabaapp/core/errors/failures/failures.dart';
import 'package:ibiapabaapp/core/usecases/usecase.dart';
import 'package:ibiapabaapp/features/categories/domain/entities/category_entity.dart';
import 'package:ibiapabaapp/features/categories/domain/entities/parent_category.dart';
import 'package:ibiapabaapp/features/categories/domain/repositories/categories_repository.dart';

class GetParentCategories
    implements Usecase<List<ParentCategory>, GetParentCategoriesParams> {
  final CategoriesRepository repository;
  GetParentCategories(this.repository);

  @override
  Future<Either<AppFailure, List<ParentCategory>>> call(
    GetParentCategoriesParams params,
  ) {
    return repository.getParentCategories(
      forceRefresh: params.forceRefresh,
      entity: params.entity,
    );
  }
}

class GetParentCategoriesParams {
  final bool forceRefresh;
  final CategoryEntity? entity;

  const GetParentCategoriesParams({this.forceRefresh = false, this.entity});
}
