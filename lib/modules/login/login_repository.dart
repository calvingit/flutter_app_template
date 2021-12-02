import 'package:flutter_app_template/data/api/api_provider.dart';
import 'package:flutter_app_template/services/storage.dart';
import 'package:get/get.dart';

class LoginRepository {
  final ApiProvider api = Get.find();
  final StorageService storage = Get.find();
}
