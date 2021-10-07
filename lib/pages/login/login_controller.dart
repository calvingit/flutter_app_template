import 'package:flutter_app_template/routes/app_pages.dart';
import 'package:get/get.dart';

import 'login_repository.dart';

class LoginController extends GetxController {
  final LoginRepository repository;
  LoginController(this.repository);

  Future<void> login() async {
    Get.toNamed(Routes.home);
  }
}
