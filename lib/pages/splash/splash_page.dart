import 'package:flutter/material.dart';
import 'package:flutter_app_template/routes/app_pages.dart';
import 'package:get/get.dart';

import 'splash_controller.dart';

class SplashPage extends GetView<SplashController> {
  const SplashPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SplashPage'),
        actions: [
          TextButton(
            onPressed: () {
              //
              Get.offAndToNamed(Routes.login);
            },
            child: const Text('登录'),
          ),
        ],
      ),
      body: SafeArea(
        child: Center(
          child: Image.asset(
            'assets/images/apple-logo.png',
            width: 30,
            height: 30,
          ),
        ),
      ),
    );
  }
}
