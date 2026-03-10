import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:forui/forui.dart';
import 'package:go_router/go_router.dart';
import 'package:ibiapabaapp/core/network/dio_provider.dart';
import 'package:ibiapabaapp/features/home/presentation/widgets/explore_cities_section.dart';
import 'package:ibiapabaapp/shared/ui/fragments/effects/default_shimmer_effect.dart';

import 'package:ibiapabaapp/shared/ui/layout/items_grid.dart';
import 'package:ibiapabaapp/shared/ui/layout/wrappers/main_wrapper.dart';
import 'package:skeletonizer/skeletonizer.dart';

class SearchScreen extends ConsumerStatefulWidget {
  const SearchScreen({super.key});

  @override
  ConsumerState<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends ConsumerState<SearchScreen> {
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 1), () {
      if (mounted) setState(() => _isLoading = false);
    });
  }

  @override
  Widget build(BuildContext context) {
    const List<String> companiesCategories = [
      "Restaurantes",
      "Hotéis e pousadas",
      "Postos de gasolina",
      "Banhos",
      "Comércio",
      "Aventura",
      "Temáticos",
    ];
    const List<String> eventsCategories = [
      "Religiosos",
      "Shows",
      "Esportivos",
      "Cultura e arte",
      "Palestras",
    ];

    final dioClient = ref.watch(dioProvider);

    return SafeArea(
      top: true,
      child: SingleChildScrollView(
        child: Skeletonizer(
          effect: customShimmerEffect(context),
          enabled: _isLoading,
          child: Column(
            spacing: 16,
            children: [
              _SearchHeader(),
              MainWrapper(
                hasTopPadding: false,
                children: [
                  ItemsGrid(
                    title: "Empresas",
                    items: companiesCategories,
                    onItemTap: (category) {
                      dioClient.get('/users');
                    },
                    onSeeAllTap: () => context.push('/app/companies'),
                  ),
                  ItemsGrid(
                    title: "Eventos",
                    items: eventsCategories,
                    onSeeAllTap: () => context.push('/app/events'),
                  ),
                ],
              ),
              ExploreCitiesSection(),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}

class _SearchHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: context.theme.colors.muted.withAlpha(200),
      ),
      child: Padding(
        padding: const .fromLTRB(24, 32, 24, 24),
        child: FTextField(
          style: (style) => style.copyWith(filled: true),
          hint: 'O que vamos fazer hoje na Ibiapaba?',
          textAlign: .start,
        ),
      ),
    );
  }
}
