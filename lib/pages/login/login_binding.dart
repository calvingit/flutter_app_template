import 'package:get/get.dart';
import '/data/api/api_provider.dart';
import '/services/storage.dart';

import 'login_controller.dart';
import 'login_repository.dart';

class LoginBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(
      () => LoginController(
        LoginRepository(
          ApiProvider(),
          StorageService.to,
        ),
      ),
    );
  }
}
