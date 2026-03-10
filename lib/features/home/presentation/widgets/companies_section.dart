import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:forui/forui.dart';
import 'package:go_router/go_router.dart';
import 'package:ibiapabaapp/features/companies/domain/entities/company.dart';
import 'package:ibiapabaapp/features/companies/presentation/controllers/companies_controller.dart';
import 'package:ibiapabaapp/features/companies/presentation/widgets/company_card.dart';
import 'package:ibiapabaapp/shared/ui/fragments/effects/default_shimmer_effect.dart';
import 'package:ibiapabaapp/shared/ui/layout/section_header.dart';
import 'package:skeletonizer/skeletonizer.dart';

final List<Company> _mockCompanies = List.generate(
  5,
  (index) => Company(
    id: 'mock-$index',
    cnpj: '',
    maxReachLevel: .local,
    slug: 'mock',
    name: 'Carregando empresa',
    coverImgUrl: '',
    categories: ['Categoria', 'Subcategoria'],
  ),
);

class CompaniesSection extends ConsumerStatefulWidget {
  const CompaniesSection({super.key});

  @override
  ConsumerState<CompaniesSection> createState() => _CompaniesSectionState();
}

class _CompaniesSectionState extends ConsumerState<CompaniesSection> {
  @override
  Widget build(BuildContext context) {
    final companiesAsync = ref.watch(companiesProvider);

    return Column(
      mainAxisAlignment: .start,
      crossAxisAlignment: .start,
      spacing: 16,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
          child: SectionHeader(
            title: 'Explore as empresas da Ibiapaba',
            onSeeAllTap: () => context.push('/app/companies'),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(24, 0, 0, 0),
          child: companiesAsync.when(
            skipLoadingOnRefresh: false,
            loading: () => _Section(companies: _mockCompanies, isLoading: true),

            error: (error, stack) => Center(
              child: Expanded(
                child: Column(
                  mainAxisAlignment: .center,
                  spacing: 16,
                  children: [
                    Icon(
                      Icons.error_outline,
                      color: context.theme.colors.mutedForeground,
                      size: 64,
                    ),
                    Text(
                      'Erro ao carregar empresas',
                      style: context.theme.typography.base,
                    ),
                  ],
                ),
              ),
            ),

            data: (companies) =>
                _Section(companies: companies, isLoading: false),
          ),
        ),
      ],
    );
  }
}

class _Section extends StatelessWidget {
  final bool isLoading;
  final List<Company> companies;

  const _Section({required this.companies, required this.isLoading});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 8,
      children: [
        Skeletonizer(
          effect: customShimmerEffect(context),
          enabled: isLoading,
          child: SizedBox(
            height: 300,
            child: ListView.separated(
              cacheExtent: 500,
              addRepaintBoundaries: true,
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              itemCount: companies.length,
              separatorBuilder: (_, _) => const SizedBox(width: 12),
              itemBuilder: (context, index) {
                return SizedBox(
                  width: 250,
                  child: CompanyCard(company: companies[index]),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
