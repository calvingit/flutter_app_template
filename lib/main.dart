import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/services/storage.dart';

import 'app.dart';

Future<void> dependencyInjection() async {
  await Get.putAsync(() => StorageService().init());
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dependencyInjection();
  runApp(const App());
}
