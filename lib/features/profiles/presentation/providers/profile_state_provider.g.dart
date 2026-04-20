// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_state_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ProfileState)
final profileStateProvider = ProfileStateProvider._();

final class ProfileStateProvider
    extends $NotifierProvider<ProfileState, ProfileStateData> {
  ProfileStateProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'profileStateProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$profileStateHash();

  @$internal
  @override
  ProfileState create() => ProfileState();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ProfileStateData value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ProfileStateData>(value),
    );
  }
}

String _$profileStateHash() => r'ca45f0dc52df492a8765d1f64fd56aacf121adcb';

abstract class _$ProfileState extends $Notifier<ProfileStateData> {
  ProfileStateData build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<ProfileStateData, ProfileStateData>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<ProfileStateData, ProfileStateData>,
              ProfileStateData,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
