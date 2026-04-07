import 'package:ibiapabaapp/features/categories/domain/entities/category_count.dart';

class ParentCategory {
  final String id;
  final String name;
  final CategoryCount count;

  const ParentCategory({
    required this.id,
    required this.name,
    required this.count,
  });
}
