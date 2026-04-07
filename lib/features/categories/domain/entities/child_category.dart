import 'package:ibiapabaapp/features/categories/domain/entities/category_count.dart';

class ChildCategory {
  final String id;
  final String name;
  final CategoryCount count;

  const ChildCategory({
    required this.id,
    required this.name,
    required this.count,
  });
}
