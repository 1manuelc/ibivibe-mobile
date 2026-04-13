// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'businesses_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(businessesRemoteDatasource)
final businessesRemoteDatasourceProvider =
    BusinessesRemoteDatasourceProvider._();

final class BusinessesRemoteDatasourceProvider
    extends
        $FunctionalProvider<
          BusinessesRemoteDatasource,
          BusinessesRemoteDatasource,
          BusinessesRemoteDatasource
        >
    with $Provider<BusinessesRemoteDatasource> {
  BusinessesRemoteDatasourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'businessesRemoteDatasourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$businessesRemoteDatasourceHash();

  @$internal
  @override
  $ProviderElement<BusinessesRemoteDatasource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  BusinessesRemoteDatasource create(Ref ref) {
    return businessesRemoteDatasource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(BusinessesRemoteDatasource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<BusinessesRemoteDatasource>(value),
    );
  }
}

String _$businessesRemoteDatasourceHash() =>
    r'adc30775af0f3409f3fa06e5de1a087dba84649b';

@ProviderFor(businessesLocalDatasource)
final businessesLocalDatasourceProvider = BusinessesLocalDatasourceProvider._();

final class BusinessesLocalDatasourceProvider
    extends
        $FunctionalProvider<
          BusinessesLocalDatasource,
          BusinessesLocalDatasource,
          BusinessesLocalDatasource
        >
    with $Provider<BusinessesLocalDatasource> {
  BusinessesLocalDatasourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'businessesLocalDatasourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$businessesLocalDatasourceHash();

  @$internal
  @override
  $ProviderElement<BusinessesLocalDatasource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  BusinessesLocalDatasource create(Ref ref) {
    return businessesLocalDatasource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(BusinessesLocalDatasource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<BusinessesLocalDatasource>(value),
    );
  }
}

String _$businessesLocalDatasourceHash() =>
    r'493cb0d92c0c341d62b092de1432d7ed74b2e4d0';

@ProviderFor(businessesRepository)
final businessesRepositoryProvider = BusinessesRepositoryProvider._();

final class BusinessesRepositoryProvider
    extends
        $FunctionalProvider<
          BusinessesRepository,
          BusinessesRepository,
          BusinessesRepository
        >
    with $Provider<BusinessesRepository> {
  BusinessesRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'businessesRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$businessesRepositoryHash();

  @$internal
  @override
  $ProviderElement<BusinessesRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  BusinessesRepository create(Ref ref) {
    return businessesRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(BusinessesRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<BusinessesRepository>(value),
    );
  }
}

String _$businessesRepositoryHash() =>
    r'ed5de462e024082fcd4d45b7bce2ee50f9204984';

@ProviderFor(getAllBusinesses)
final getAllBusinessesProvider = GetAllBusinessesProvider._();

final class GetAllBusinessesProvider
    extends
        $FunctionalProvider<
          GetAllBusinesses,
          GetAllBusinesses,
          GetAllBusinesses
        >
    with $Provider<GetAllBusinesses> {
  GetAllBusinessesProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getAllBusinessesProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getAllBusinessesHash();

  @$internal
  @override
  $ProviderElement<GetAllBusinesses> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  GetAllBusinesses create(Ref ref) {
    return getAllBusinesses(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetAllBusinesses value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetAllBusinesses>(value),
    );
  }
}

String _$getAllBusinessesHash() => r'b0dcbb2204f3e23788b4f3659e5c39bb88938dd3';

@ProviderFor(getBusinessById)
final getBusinessByIdProvider = GetBusinessByIdProvider._();

final class GetBusinessByIdProvider
    extends
        $FunctionalProvider<GetBusinessById, GetBusinessById, GetBusinessById>
    with $Provider<GetBusinessById> {
  GetBusinessByIdProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getBusinessByIdProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getBusinessByIdHash();

  @$internal
  @override
  $ProviderElement<GetBusinessById> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  GetBusinessById create(Ref ref) {
    return getBusinessById(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetBusinessById value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetBusinessById>(value),
    );
  }
}

String _$getBusinessByIdHash() => r'c8bae835aea340245d273bcbc1abd7707be79680';
