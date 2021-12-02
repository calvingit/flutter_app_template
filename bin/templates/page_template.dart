String pageContent(String moduleName, String className) {
  return '''import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '${moduleName}_controller.dart';

class ${className}Page extends GetView<${className}Controller> {
  const ${className}Page({Key? key}) : super(key: key);
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

  ''';
}
