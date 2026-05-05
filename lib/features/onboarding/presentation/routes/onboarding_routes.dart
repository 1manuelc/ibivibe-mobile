import 'package:go_router/go_router.dart';
import 'package:ibiapabaapp/app/router/transitions/fade_through_page.dart';
import 'package:ibiapabaapp/features/onboarding/presentation/screens/onboarding_newcomer_screen.dart';
import 'package:ibiapabaapp/features/onboarding/presentation/screens/onboarding_screen.dart';

final List<RouteBase> onboardingRoutes = [
  GoRoute(
    path: '/onboarding/newcomer',
    builder: (context, state) => const OnboardingNewcomerScreen(),
  ),
  GoRoute(
    path: '/onboarding/profile-info',
    pageBuilder: (context, state) =>
        FadeThroughPage(child: const OnboardingScreen(), key: state.pageKey),
  ),
  GoRoute(
    path: '/onboarding/profile-select',
    pageBuilder: (context, state) =>
        FadeThroughPage(child: const OnboardingScreen(), key: state.pageKey),
  ),
];
