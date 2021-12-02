import 'package:get/get.dart';
import 'change_name_controller.dart';
import 'change_name_repository.dart';

class ChangeNameBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ChangeNameController>(
      () => ChangeNameController(ChangeNameRepository()),
    );
  }
}
