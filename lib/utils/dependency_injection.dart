import 'package:flutter/material.dart';
import 'package:flutter_app_template/services/storage.dart';
import 'package:get/get.dart';

class DependencyInjection {
  static Future<void> init() async {
    WidgetsFlutterBinding.ensureInitialized();

    await Get.putAsync(() => StorageService().init());
  }
}
