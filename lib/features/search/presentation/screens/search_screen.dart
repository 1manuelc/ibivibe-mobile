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
    const companiesCategories = [
      "Restaurantes",
      "Hotéis e pousadas",
      "Postos de gasolina",
      "Banhos",
      "Comércio",
      "Aventura",
      "Temáticos",
    ];
    const eventsCategories = [
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
                    onItemTap: (_) => dioClient.get('/users'),
                    onSeeAllTap: () => context.push('/app/businesses'),
                  ),
                  ItemsGrid(
                    title: "Eventos",
                    items: eventsCategories,
                    onSeeAllTap: () => context.push('/app/events'),
                  ),
                ],
              ),
              const ExploreCitiesSection(),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}

class _SearchHeader extends StatelessWidget {
  const _SearchHeader();

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'searchBar',
      flightShuttleBuilder:
          (flightContext, animation, direction, fromCtx, toCtx) {
            return _SearchFieldShell(
              color: context.theme.colors.muted,
              child: FTextField(
                style: (s) => s.copyWith(filled: true),
                hint: 'O que vamos fazer hoje na Ibiapaba?',
                readOnly: true,
              ),
            );
          },
      child: Material(
        color: Colors.transparent,
        child: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () => context.push('/app/search/expanded'),
          child: _SearchFieldShell(
            color: context.theme.colors.muted,
            child: Skeleton.unite(
              borderRadius: .circular(16),
              child: IgnorePointer(
                child: FTextField(
                  style: (s) => s.copyWith(filled: true),
                  hint: 'O que vamos fazer hoje na Ibiapaba?',
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _SearchFieldShell extends StatelessWidget {
  const _SearchFieldShell({required this.color, required this.child});

  final Color color;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(color: color),
      padding: const EdgeInsets.fromLTRB(16, 32, 16, 24),
      child: child,
    );
  }
}
