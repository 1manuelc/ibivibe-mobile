enum ReachLevel { local, regional }

class Company {
  final String id;
  final String slug;
  final String? cnpj;
  final String name;
  final String? description;
  final ReachLevel maxReachLevel;
  final String? coverImgUrl;
  final List<String> categories;
  final DateTime createdAt;
  final DateTime updatedAt;

  Company({
    required this.id,
    required this.slug,
    required this.cnpj,
    required this.name,
    this.description,
    required this.maxReachLevel,
    this.coverImgUrl,
    required this.categories,
    required this.createdAt,
    required this.updatedAt,
  });
}
