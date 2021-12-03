import '/data/api/api_provider.dart';
import '/services/storage.dart';
import 'package:get/get.dart';

class ProfileRepository {
  final ApiProvider api = Get.find();
  final StorageService storage = Get.find();
}
  