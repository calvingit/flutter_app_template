import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'change_name_controller.dart';

class ChangeNamePage extends GetView<ChangeNameController> {
  const ChangeNamePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SplashPage'),
      ),
      body: Container(),
    );
  }
}

  