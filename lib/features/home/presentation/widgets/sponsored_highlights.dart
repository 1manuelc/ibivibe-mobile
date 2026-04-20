import 'package:flutter/material.dart';
import 'package:ibiapabaapp/shared/ui/fragments/carousel/content_carousel.dart';
import 'package:ibiapabaapp/shared/ui/fragments/media/sources.dart';

class SponsoredHighlights extends StatelessWidget {
  const SponsoredHighlights({super.key});

  static final List<MediaSource> _items = [
    NetworkMedia(
      url: 'https://cdn.ibiapabaapp.com.br/cities/ubajara',
      route: '/app/cities/ubajara',
      title: 'Ubajara',
      isVideo: false,
    ),
    NetworkMedia(
      url: 'https://cdn.ibiapabaapp.com.br/cities/tiangua',
      route: '/app/cities/tiangua',
      title: 'Tianguá',
      isVideo: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: .symmetric(horizontal: 16),
      child: Center(
        child: SizedBox(
          width: 450,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: ContentCarousel(items: _items, aspectRatio: 5 / 6),
          ),
        ),
      ),
    );
  }
}
