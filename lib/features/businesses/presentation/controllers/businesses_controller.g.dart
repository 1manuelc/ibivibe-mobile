// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'businesses_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(Businesses)
final businessesProvider = BusinessesProvider._();

final class BusinessesProvider
    extends $AsyncNotifierProvider<Businesses, List<Business>> {
  BusinessesProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'businessesProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$businessesHash();

  @$internal
  @override
  Businesses create() => Businesses();
}

String _$businessesHash() => r'7a4d81eaa36b32df6538278b6cce3c7f833e5e31';

abstract class _$Businesses extends $AsyncNotifier<List<Business>> {
  FutureOr<List<Business>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<List<Business>>, List<Business>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<Business>>, List<Business>>,
              AsyncValue<List<Business>>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
