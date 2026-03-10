import 'package:flutter/material.dart';
import 'package:ibiapabaapp/shared/ui/fragments/carousel/content_carousel.dart';
import 'package:ibiapabaapp/shared/ui/fragments/media/sources.dart';

class SponsoredHighlights extends StatelessWidget {
  const SponsoredHighlights({super.key});

  // Lista de itens convertida para o novo padrão de Sealed Classes
  static final List<MediaSource> _items = [
    NetworkMedia(
      url:
          'https://instagram.fjdo10-1.fna.fbcdn.net/v/...', // URL encurtada para o exemplo
      route: '/app/companies/1',
      title: 'Patrocinado',
      isVideo: false,
    ),
    NetworkMedia(
      url: 'https://instagram.fjdo10-1.fna.fbcdn.net/v/...',
      route: '/app/events/2',
      isVideo: false,
    ),
    NetworkMedia(
      url: 'https://instagram.fjdo1-2.fna.fbcdn.net/v/...',
      route: '/app/events/3',
      isVideo: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    // Definimos o limite de largura para tablets aqui
    return Center(
      child: SizedBox(
        width: 450,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: ContentCarousel(
            items: _items,
            aspectRatio: 5 / 6, // Passamos o aspecto desejado
          ),
        ),
      ),
    );
  }
}
