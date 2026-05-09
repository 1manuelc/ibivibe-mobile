// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'google_oauth_state_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(GoogleOAuthState)
final googleOAuthStateProvider = GoogleOAuthStateProvider._();

final class GoogleOAuthStateProvider
    extends $NotifierProvider<GoogleOAuthState, GoogleOAuthData> {
  GoogleOAuthStateProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'googleOAuthStateProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$googleOAuthStateHash();

  @$internal
  @override
  GoogleOAuthState create() => GoogleOAuthState();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GoogleOAuthData value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GoogleOAuthData>(value),
    );
  }
}

String _$googleOAuthStateHash() => r'6d516228f1b4923cca36635cb6a2383ef4c0ccf0';

abstract class _$GoogleOAuthState extends $Notifier<GoogleOAuthData> {
  GoogleOAuthData build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<GoogleOAuthData, GoogleOAuthData>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<GoogleOAuthData, GoogleOAuthData>,
              GoogleOAuthData,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
