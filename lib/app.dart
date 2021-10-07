import 'package:flutter/material.dart';

import 'package:get/get.dart';
import '/utils/themes.dart';
import '/i18n/translation_service.dart';
import '/routes/app_pages.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,

      /// 日志
      enableLog: true,

      /// 主题
      theme: Themes.light,

      /// 路由
      initialRoute: AppPages.initial,
      getPages: AppPages.routes,

      /// 多语言
      locale: TranslationService.locale,
      fallbackLocale: TranslationService.fallbackLocale,
      translations: TranslationService(),
    );
  }
}
