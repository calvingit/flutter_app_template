import 'package:flutter_app_template/routes/app_pages.dart';
import 'package:get/get.dart';

import 'splash_repository.dart';

class SplashController extends GetxController {
  final SplashRepository repository;
  SplashController(this.repository);

  @override
  void onReady() {
    Get.offAndToNamed(Routes.login);
    Future.delayed(const Duration(seconds: 3)).then((value) {
      // 登录
      Get.offAndToNamed(Routes.login);
    });
  }
}
