import 'package:go_router/go_router.dart';
import 'package:ibiapabaapp/core/beta/presentation/screens/under_development_screen.dart';

final List<RouteBase> betaRoutes = [
  GoRoute(
    path: '/app/beta/under-development',
    builder: (context, state) => const UnderDevelopmentScreen(),
  ),
];
