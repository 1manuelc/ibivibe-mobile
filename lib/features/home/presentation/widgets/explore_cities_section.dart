import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ibiapabaapp/features/cities/domain/entities/city.dart';
import 'package:ibiapabaapp/features/cities/presentation/widgets/city_card.dart';
import 'package:ibiapabaapp/shared/ui/layout/section_header.dart';

class ExploreCitiesSection extends StatefulWidget {
  const ExploreCitiesSection({super.key});

  @override
  State<ExploreCitiesSection> createState() => _ExploreCitiesSectionState();
}

class _ExploreCitiesSectionState extends State<ExploreCitiesSection> {
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5), () {
      if (mounted) setState(() => _isLoading = false);
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<City> cities = [
      City(
        id: 'ubajara',
        slug: 'ubajara',
        name: 'Ubajara',
        imageUrl:
            'https://imgs.search.brave.com/N4w28VWC72gH2Zi0HYc7q3-sUFkeDmsxHuZtLw7rakc/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly93d3cu/dmlhamFsaS5jb20u/YnIvd3AtY29udGVu/dC91cGxvYWRzLzIw/MjIvMDQvc2VycmEt/ZGEtaWJpYXBhYmEt/OS5qcGc',
        categories: ['Alto da Serra', 'Turismo', 'Belas paisagens'],
      ),
      City(
        id: 'tiangua',
        slug: 'tiangua',
        name: 'Tianguá',
        imageUrl:
            'https://imgs.search.brave.com/N4w28VWC72gH2Zi0HYc7q3-sUFkeDmsxHuZtLw7rakc/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly93d3cu/dmlhamFsaS5jb20u/YnIvd3AtY29udGVu/dC91cGxvYWRzLzIw/MjIvMDQvc2VycmEt/ZGEtaWJpYXBhYmEt/OS5qcGc',
        categories: ['Alto da Serra', 'Urbana'],
      ),
      City(
        id: 'sao_benedito',
        slug: 'sao-benedito',
        name: 'São Benedito',
        imageUrl:
            'https://imgs.search.brave.com/N4w28VWC72gH2Zi0HYc7q3-sUFkeDmsxHuZtLw7rakc/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly93d3cu/dmlhamFsaS5jb20u/YnIvd3AtY29udGVu/dC91cGxvYWRzLzIw/MjIvMDQvc2VycmEt/ZGEtaWJpYXBhYmEt/OS5qcGc',
        categories: ['Alto da Serra', 'Ecoturismo', 'Floricultura'],
      ),
      City(
        id: 'vicosa',
        slug: 'vicosa-do-ceara',
        name: 'Viçosa do Ceará',
        imageUrl:
            'https://imgs.search.brave.com/N4w28VWC72gH2Zi0HYc7q3-sUFkeDmsxHuZtLw7rakc/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly93d3cu/dmlhamFsaS5jb20u/YnIvd3AtY29udGVu/dC91cGxvYWRzLzIw/MjIvMDQvc2VycmEt/ZGEtaWJpYXBhYmEt/OS5qcGc',
        categories: ['Alto da Serra', 'Turismo Histórico', 'Cachaça'],
      ),
    ];

    return Column(
      mainAxisAlignment: .start,
      crossAxisAlignment: .start,
      spacing: 16,
      children: [
        SectionHeader(
          title: 'Explore as Cidades da Ibiapaba',
          onSeeAllTap: () => context.push('/app/cities'),
        ),
        SizedBox(
          height: 400,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            physics: const ClampingScrollPhysics(),
            separatorBuilder: (_, _) => const SizedBox(width: 12),
            itemCount: cities.length,
            itemBuilder: (context, index) => SizedBox(
              width: 200,
              child: CityCard(city: cities.elementAt(index)),
            ),
          ),
        ),
      ],
    );
  }
}
