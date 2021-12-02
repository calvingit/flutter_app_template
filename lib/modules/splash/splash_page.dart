import 'package:flutter/material.dart';
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
            onPressed: controller.click,
            child: Text('sign_in'.tr, style: context.textTheme.button),
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
