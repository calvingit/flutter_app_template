String controllerContent(String moduleName, String className) {
  return '''import '/routes/app_pages.dart';
import 'package:get/get.dart';

import '${moduleName}_repository.dart';

class ${className}Controller extends GetxController {
  final ${className}Repository repository;
  ${className}Controller(this.repository);

  @override
  void onReady() {
    
  }
}

  ''';
}
