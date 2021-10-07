import '/services/storage.dart';

import '/data/api/api_provider.dart';

class HomeRepository {
  final ApiProvider api;
  final StorageService storage;

  HomeRepository(this.api, this.storage);
}
