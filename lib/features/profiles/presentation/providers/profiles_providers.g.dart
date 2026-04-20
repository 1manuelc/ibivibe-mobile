// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profiles_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// INFRA

@ProviderFor(profilesRemoteDatasource)
final profilesRemoteDatasourceProvider = ProfilesRemoteDatasourceProvider._();

/// INFRA

final class ProfilesRemoteDatasourceProvider
    extends
        $FunctionalProvider<
          ProfilesRemoteDatasource,
          ProfilesRemoteDatasource,
          ProfilesRemoteDatasource
        >
    with $Provider<ProfilesRemoteDatasource> {
  /// INFRA
  ProfilesRemoteDatasourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'profilesRemoteDatasourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$profilesRemoteDatasourceHash();

  @$internal
  @override
  $ProviderElement<ProfilesRemoteDatasource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ProfilesRemoteDatasource create(Ref ref) {
    return profilesRemoteDatasource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ProfilesRemoteDatasource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ProfilesRemoteDatasource>(value),
    );
  }
}

String _$profilesRemoteDatasourceHash() =>
    r'2a62e609c8f6ae2fd7e72bbae1f3859b66817ee7';

@ProviderFor(profilesLocalStorage)
final profilesLocalStorageProvider = ProfilesLocalStorageProvider._();

final class ProfilesLocalStorageProvider
    extends
        $FunctionalProvider<
          ProfilesLocalStorage,
          ProfilesLocalStorage,
          ProfilesLocalStorage
        >
    with $Provider<ProfilesLocalStorage> {
  ProfilesLocalStorageProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'profilesLocalStorageProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$profilesLocalStorageHash();

  @$internal
  @override
  $ProviderElement<ProfilesLocalStorage> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ProfilesLocalStorage create(Ref ref) {
    return profilesLocalStorage(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ProfilesLocalStorage value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ProfilesLocalStorage>(value),
    );
  }
}

String _$profilesLocalStorageHash() =>
    r'281a33ea62b4a40a418d8ca332542d3123182195';

/// DATA

@ProviderFor(profilesRepository)
final profilesRepositoryProvider = ProfilesRepositoryProvider._();

/// DATA

final class ProfilesRepositoryProvider
    extends
        $FunctionalProvider<
          ProfilesRepository,
          ProfilesRepository,
          ProfilesRepository
        >
    with $Provider<ProfilesRepository> {
  /// DATA
  ProfilesRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'profilesRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$profilesRepositoryHash();

  @$internal
  @override
  $ProviderElement<ProfilesRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ProfilesRepository create(Ref ref) {
    return profilesRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ProfilesRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ProfilesRepository>(value),
    );
  }
}

String _$profilesRepositoryHash() =>
    r'af0a886a657c6882b826b97f0ca042268d31ba05';

/// USECASES

@ProviderFor(getAccountProfiles)
final getAccountProfilesProvider = GetAccountProfilesProvider._();

/// USECASES

final class GetAccountProfilesProvider
    extends
        $FunctionalProvider<
          GetAccountProfiles,
          GetAccountProfiles,
          GetAccountProfiles
        >
    with $Provider<GetAccountProfiles> {
  /// USECASES
  GetAccountProfilesProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getAccountProfilesProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getAccountProfilesHash();

  @$internal
  @override
  $ProviderElement<GetAccountProfiles> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GetAccountProfiles create(Ref ref) {
    return getAccountProfiles(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetAccountProfiles value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetAccountProfiles>(value),
    );
  }
}

String _$getAccountProfilesHash() =>
    r'15ea41badf5322b7d22424293eacc9720eb2934e';

@ProviderFor(getProfileInterests)
final getProfileInterestsProvider = GetProfileInterestsProvider._();

final class GetProfileInterestsProvider
    extends
        $FunctionalProvider<
          GetProfileInterests,
          GetProfileInterests,
          GetProfileInterests
        >
    with $Provider<GetProfileInterests> {
  GetProfileInterestsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getProfileInterestsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getProfileInterestsHash();

  @$internal
  @override
  $ProviderElement<GetProfileInterests> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GetProfileInterests create(Ref ref) {
    return getProfileInterests(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetProfileInterests value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetProfileInterests>(value),
    );
  }
}

String _$getProfileInterestsHash() =>
    r'53c20af5adc0784b63dcae2e1a928eff4585a562';

@ProviderFor(updateProfileInterests)
final updateProfileInterestsProvider = UpdateProfileInterestsProvider._();

final class UpdateProfileInterestsProvider
    extends
        $FunctionalProvider<
          UpdateProfileInterests,
          UpdateProfileInterests,
          UpdateProfileInterests
        >
    with $Provider<UpdateProfileInterests> {
  UpdateProfileInterestsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'updateProfileInterestsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$updateProfileInterestsHash();

  @$internal
  @override
  $ProviderElement<UpdateProfileInterests> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  UpdateProfileInterests create(Ref ref) {
    return updateProfileInterests(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(UpdateProfileInterests value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<UpdateProfileInterests>(value),
    );
  }
}

String _$updateProfileInterestsHash() =>
    r'd602d94afe201d77439aa0bc742060440b36f4d4';
