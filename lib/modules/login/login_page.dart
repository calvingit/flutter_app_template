import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '/routes/app_pages.dart';

import 'login_controller.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: TextButton(
            onPressed: controller.login,
            child: TextButton(
              onPressed: () {
                //
                Get.offAllNamed(Routes.home);
              },
              child: Text('sign_in'.tr),
            ),
          ),
        ),
      ),
    );
  }
}
