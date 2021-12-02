import 'package:get/get.dart';

import 'splash_controller.dart';
import 'splash_repository.dart';

class SplashBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashController>(
      () => SplashController(SplashRepository()),
    );
  }
}
