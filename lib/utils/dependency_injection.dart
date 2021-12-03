import 'package:flutter/material.dart';
import 'package:flutter_app_template/services/storage.dart';
import 'package:get/get.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class DependencyInjection {
  static Future<void> init() async {
    WidgetsFlutterBinding.ensureInitialized();
    await dotenv.load(fileName: ".env");

    await Get.putAsync(() => StorageService().init());
  }
}
