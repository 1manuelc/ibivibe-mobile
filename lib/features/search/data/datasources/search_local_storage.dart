import 'package:ibiapabaapp/core/cache/base_cache_storage.dart';

class SearchLocalStorage extends BaseCacheStorage {
  SearchLocalStorage(super.cacheService);

  @override
  String get storeName => 'search';

  Future<void> saveRecentSearches(List<String> searches) async {
    saveList(
      key: 'recent_searches',
      items: searches,
      toMap: (i) => {'value': i},
    );
  }

  Future<List<String>> getRecentSearches() async {
    return getList(key: 'recent_searches', fromJson: (json) => json['value']);
  }
}
