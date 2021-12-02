String repositoryContent(String className) {
  return '''import '/data/api/api_provider.dart';
import '/services/storage.dart';
import 'package:get/get.dart';

class ${className}Repository {
  final ApiProvider api = Get.find();
  final StorageService storage = Get.find();
}
  ''';
}
