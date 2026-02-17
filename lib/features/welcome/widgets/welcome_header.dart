import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:forui/forui.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Slide {
  final String title;
  final String description;
  final String imageAssetUri;

  Slide({
    required this.title,
    required this.description,
    required this.imageAssetUri,
  });
}

class WelcomeHeader extends StatefulWidget {
  const WelcomeHeader({super.key});

  @override
  State<WelcomeHeader> createState() => _WelcomeHeaderState();
}

class _WelcomeHeaderState extends State<WelcomeHeader> {
  int _currentIndex = 0;
  final CarouselSliderController _controller = CarouselSliderController();

  final List<Slide> _slides = [
    Slide(
      title: 'Onde é hoje?',
      description:
          'Descubra o que há de melhor na Ibiapaba em poucos toques, aproveite promoções e saiba em primeira mão sobre eventos do seu interesse.',
      imageAssetUri: 'assets/images/highlights-1.webp',
    ),
    Slide(
      title: 'Lorem Ipsum Dolor',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      imageAssetUri: 'assets/images/highlights_placeholder.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          carouselController: _controller,
          options: CarouselOptions(
            viewportFraction: 1.0,
            enlargeCenterPage: true,
            autoPlay: true,
            aspectRatio: 0.57,
            enableInfiniteScroll: false,
            onPageChanged: (index, reason) {
              setState(() => _currentIndex = index);
            },
          ),
          items: _slides.map((slide) {
            return Builder(
              builder: (BuildContext context) {
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      slide.imageAssetUri,
                      fit: BoxFit.contain,
                      height: 400,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      slide.title,
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 12),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        slide.description,
                        style: const TextStyle(fontSize: 14),
                        textAlign: TextAlign.center,
                        maxLines: 4,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                );
              },
            );
          }).toList(),
        ),
        const SizedBox(height: 8),
        AnimatedSmoothIndicator(
          activeIndex: _currentIndex,
          count: _slides.length,
          effect: ColorTransitionEffect(
            dotHeight: 6,
            dotWidth: 6,
            activeDotColor: context.theme.colors.foreground,
            dotColor: context.theme.colors.mutedForeground,
          ),
        ),
      ],
    );
  }
}
