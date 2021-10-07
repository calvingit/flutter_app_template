import 'package:flutter_app_template/services/storage.dart';
import 'package:get/get.dart';

import 'splash_controller.dart';
import 'splash_repository.dart';
import '/data/api/api_provider.dart';

class SplashBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashController>(
      () => SplashController(
        SplashRepository(
          ApiProvider(),
          StorageService.to,
        ),
      ),
    );
  }
}
