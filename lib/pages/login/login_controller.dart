import 'package:flutter_app_template/routes/app_pages.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  Future<void> login() async {
    Get.toNamed(Routes.home);
  }
}
