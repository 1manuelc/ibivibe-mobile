class Media {
  final String id;
  final EntityType entityType;
  final String entityId;
  final MediaType mediaType;
  final String url;
  final String? thumbnailUrl;
  final String? altText;
  final bool isCover;
  final int position;

  const Media({
    required this.id,
    required this.entityType,
    required this.entityId,
    required this.mediaType,
    required this.url,
    this.thumbnailUrl,
    this.altText,
    required this.isCover,
    required this.position,
  });
}

enum EntityType {
  city,
  event,
  company;

  String get pathSegment {
    switch (this) {
      case EntityType.city:
        return 'cities';
      case EntityType.event:
        return 'events';
      case EntityType.company:
        return 'companies';
    }
  }
}

enum MediaType { image, video }
