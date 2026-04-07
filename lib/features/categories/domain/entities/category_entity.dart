enum CategoryEntity {
  city,
  company,
  event;

  String get name {
    switch (this) {
      case CategoryEntity.city:
        return 'city';
      case CategoryEntity.company:
        return 'company';
      case CategoryEntity.event:
        return 'event';
    }
  }
}
