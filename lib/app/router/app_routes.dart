import 'package:go_router/go_router.dart';
import 'package:ibivibe/app/router/app_shell.dart';
import 'package:ibivibe/core/beta/routes/beta_routes.dart';
import 'package:ibivibe/core/settings/routes/settings_routes.dart';
import 'package:ibivibe/features/accounts/accounts_routes.dart';
import 'package:ibivibe/features/auth/auth_routes.dart';
import 'package:ibivibe/features/businesses/businesses_routes.dart';
import 'package:ibivibe/features/cities/cities_routes.dart';
import 'package:ibivibe/features/events/events_routes.dart';
import 'package:ibivibe/features/favorites/favorites_routes.dart';
import 'package:ibivibe/features/home/home_routes.dart';
import 'package:ibivibe/features/onboarding/onboarding_routes.dart';
import 'package:ibivibe/features/search/search_routes.dart';
import 'package:ibivibe/features/webviews/routes/webviews_routes.dart';
import 'package:ibivibe/features/welcome/routes/welcome_routes.dart';

final List<RouteBase> appRoutes = [
  ...betaRoutes,
  ...welcomeRoutes,
  ...authRoutes,
  ...onboardingRoutes,

  ShellRoute(
    builder: (context, state, child) => AppShell(child: child),
    routes: [
      ...accountsRoutes,
      ...searchRoutes,
      ...favoritesRoutes,
      ...webviewsRoutes,
      ...homeRoutes,
      ...citiesRoutes,
      ...businessesRoutes,
      ...eventsRoutes,
      ...settingsRoutes,
    ],
  ),
];
