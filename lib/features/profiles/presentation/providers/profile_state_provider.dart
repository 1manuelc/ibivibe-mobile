import 'package:ibiapabaapp/features/auth/domain/entities/account.dart';
import 'package:ibiapabaapp/features/auth/presentation/providers/auth_state_provider.dart';
import 'package:ibiapabaapp/features/profiles/data/datasources/profiles_local_storage.dart';
import 'package:ibiapabaapp/features/profiles/domain/entities/profile.dart';
import 'package:ibiapabaapp/features/profiles/presentation/providers/profiles_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'profile_state_provider.g.dart';

@riverpod
class ProfileState extends _$ProfileState {
  @override
  ProfileStateData build() {
    ref.listen(authStateProvider.notifier, (previous, next) {
      if (next.state.account != null) {
        _onAccountLoaded(next.state.account!);
      } else {
        state = const ProfileStateData();
      }
    });

    return const ProfileStateData();
  }

  Future<void> _onAccountLoaded(Account account) async {
    final result = await ref.read(getAccountProfilesProvider).call();
    result.fold((failure) => null, (profiles) async {
      final latestId = await _storage.loadLatestProfileId();
      final active = profiles.firstWhere((p) => p.id == latestId);

      state = ProfileStateData(activeProfile: active, profiles: profiles);
    });
  }

  ProfilesLocalStorage get _storage => ref.read(profilesLocalStorageProvider);

  Future<void> restore() async {
    final latestProfileId = await _storage.loadLatestProfileId();
    final profiles = await _storage.loadAccountProfiles();

    if (latestProfileId == null || profiles.isEmpty) return;

    final activeProfile = profiles.firstWhere((p) => p.id == latestProfileId);

    state = ProfileStateData(activeProfile: activeProfile, profiles: profiles);
  }

  Future<void> setProfiles(List<Profile> profiles) async {
    state = state.copyWith(profiles: profiles);
  }

  Future<void> switchToProfile(Profile profile) async {
    await _storage.saveLatestProfileId(profile.id);
    state = state.copyWith(activeProfile: profile);
  }
}

class ProfileStateData {
  final Profile? activeProfile;
  final List<Profile> profiles;

  const ProfileStateData({this.activeProfile, this.profiles = const []});

  ProfileStateData copyWith({Profile? activeProfile, List<Profile>? profiles}) {
    return ProfileStateData(
      activeProfile: activeProfile ?? this.activeProfile,
      profiles: profiles ?? this.profiles,
    );
  }
}
