import '/data/api/api_provider.dart';
import '/services/storage.dart';

class SplashRepository {
  final ApiProvider api;
  final StorageService storage;
  SplashRepository(this.api, this.storage);
}
