String bindingContent(String moduleName, String className) {
  return '''
import 'package:get/get.dart';
import '${moduleName}_controller.dart';
import '${moduleName}_repository.dart';

class ${className}Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<${className}Controller>(
      () => ${className}Controller(${className}Repository()),
    );
  }
}
''';
}
