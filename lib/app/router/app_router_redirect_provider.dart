import 'package:ibiapabaapp/core/preferences/user_preferences_state_provider.dart';
import 'package:ibiapabaapp/features/accounts/presentation/providers/accounts_state_provider.dart';
import 'package:ibiapabaapp/features/auth/presentation/providers/auth_state_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_router_redirect_provider.g.dart';

enum RedirectTarget { loading, welcome, onboarding, home, none }

@riverpod
RedirectTarget routerRedirect(Ref ref) {
  if (ref.watch(accountsStateProvider).isLoading) {
    return RedirectTarget.loading;
  }

  final isAuthenticated = ref.watch(isAuthenticatedProvider);
  if (!isAuthenticated) return RedirectTarget.welcome;

  final needsOnboarding = ref
      .watch(userPreferencesStateProvider)
      .needsOnboarding;

  final hasAccounts = ref
      .watch(accountsStateProvider)
      .cachedAccounts
      .isNotEmpty;
  if (needsOnboarding && !hasAccounts) return RedirectTarget.onboarding;

  return RedirectTarget.home;
}
