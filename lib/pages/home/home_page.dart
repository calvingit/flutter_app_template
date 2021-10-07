import 'package:flutter/material.dart';
import 'package:flutter_app_template/routes/app_pages.dart';
import 'package:get/get.dart';

import 'home_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('title'.tr),
      ),
      body: SafeArea(
        child: Column(
          children: [
            TextButton(
              onPressed: () {
                //
                Get.updateLocale(const Locale('zh', 'Hans'));
              },
              child: const Text('中文'),
            ),
            TextButton(
              onPressed: () {
                //
                Get.updateLocale(const Locale('en', 'US'));
              },
              child: const Text('English'),
            ),
            TextButton(
              onPressed: () {
                //
                Get.offAllNamed(Routes.login);
              },
              child: Text('sign_out'.tr),
            ),
          ],
        ),
      ),
    );
  }
}
