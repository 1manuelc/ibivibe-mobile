import 'package:ibiapabaapp/core/cache/base_cache_storage.dart';
import 'package:ibiapabaapp/features/profiles/domain/entities/profile.dart';
import 'package:ibiapabaapp/features/profiles/infra/models/profile_model.dart';

class ProfilesLocalStorage extends BaseCacheStorage {
  ProfilesLocalStorage(super.cacheService);

  @override
  String get storeName => 'profiles';

  Future<void> saveAccountProfiles(List<Profile> profiles) async {
    saveList(
      key: 'account_profiles',
      items: profiles,
      toMap: (i) => ProfileModel.toMap(i),
    );
  }

  Future<List<Profile>> loadAccountProfiles() async {
    return getList(
      key: 'account_profiles',
      fromJson: (json) => ProfileModel.fromJson(json),
    );
  }

  Future<void> saveLatestProfileId(String profileId) async {
    saveObject(
      key: 'latest_profile_id',
      item: profileId,
      toMap: (i) => {'value': i},
    );
  }

  Future<String?> loadLatestProfileId() async {
    return await getObject(
      key: 'latest_profile_id',
      fromJson: (json) => json['value'],
    );
  }
}
