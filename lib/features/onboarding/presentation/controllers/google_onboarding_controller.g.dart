// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'google_onboarding_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(GoogleOnboardingController)
final googleOnboardingControllerProvider =
    GoogleOnboardingControllerProvider._();

final class GoogleOnboardingControllerProvider
    extends
        $NotifierProvider<GoogleOnboardingController, GoogleOnboardingState> {
  GoogleOnboardingControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'googleOnboardingControllerProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$googleOnboardingControllerHash();

  @$internal
  @override
  GoogleOnboardingController create() => GoogleOnboardingController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GoogleOnboardingState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GoogleOnboardingState>(value),
    );
  }
}

String _$googleOnboardingControllerHash() =>
    r'a49ff72cc3702d24395fa0d07e70bed96bc27660';

abstract class _$GoogleOnboardingController
    extends $Notifier<GoogleOnboardingState> {
  GoogleOnboardingState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<GoogleOnboardingState, GoogleOnboardingState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<GoogleOnboardingState, GoogleOnboardingState>,
              GoogleOnboardingState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
