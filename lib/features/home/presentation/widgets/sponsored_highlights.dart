import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:forui/forui.dart';

class SponsoredHighlights extends StatefulWidget {
  const SponsoredHighlights({super.key});

  @override
  State<SponsoredHighlights> createState() => _SponsoredHighlightsState();
}

class _SponsoredHighlightsState extends State<SponsoredHighlights> {
  int activeIndex = 0;
  final CarouselSliderController _carouselController =
      CarouselSliderController();

  final List<String> _items = [
    "Destaques patrocinados",
    "Promoções imperdíveis",
    "Ofertas próximas de você",
  ];

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1 / 1,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Stack(
          children: [
            CarouselSlider.builder(
              carouselController: _carouselController,
              itemCount: _items.length,
              itemBuilder: (context, index, realIndex) {
                return _bannerItem(context);
              },
              options: CarouselOptions(
                height: double.infinity,
                viewportFraction: 1,
                autoPlay: true,
                pageSnapping: true,
                pauseAutoPlayOnTouch: true,
                enableInfiniteScroll: false,
                autoPlayInterval: const Duration(seconds: 4),
                onPageChanged: (index, reason) {
                  setState(() => activeIndex = index);
                },
              ),
            ),

            // Positioned(top: 12, left: 12, child: _SponsoredLabel()),
            Positioned(
              bottom: 12,
              left: 0,
              right: 0,
              child: Center(
                child: AnimatedSmoothIndicator(
                  activeIndex: activeIndex,
                  count: _items.length,
                  effect: ExpandingDotsEffect(
                    dotHeight: 8,
                    dotWidth: 8,
                    activeDotColor: context.theme.colors.foreground,
                    dotColor: context.theme.colors.foreground.withAlpha(164),
                    expansionFactor: 3,
                    spacing: 8,
                  ),
                  onDotClicked: (index) =>
                      _carouselController.animateToPage(index),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _bannerItem(BuildContext context) {
    return Container(
      width: double.infinity,
      color: context.theme.colors.muted,
      alignment: Alignment.center,
      child: Image.asset('assets/images/banner-trilhao-quadrado.webp'),
    );
  }
}

// class _SponsoredLabel extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
//       decoration: BoxDecoration(
//         color: context.theme.colors.primary,
//         borderRadius: BorderRadius.circular(6),
//       ),
//       child: Row(
//         mainAxisAlignment: .center,
//         crossAxisAlignment: .center,
//         children: [
//           Icon(
//             Icons.campaign,
//             size: 24,
//             color: context.theme.colors.primaryForeground,
//           ),
//           Text(
//             '2° Trilhão Tianguá Offroad',
//             style: TextStyle(
//               fontWeight: .w600,
//               fontSize: 16,
//               color: context.theme.colors.primaryForeground,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
