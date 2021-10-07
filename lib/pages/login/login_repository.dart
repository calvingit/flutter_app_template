import '/data/api/api_provider.dart';
import '/services/storage.dart';

class LoginRepository {
  final ApiProvider api;
  final StorageService storage;
  LoginRepository(this.api, this.storage);
}
