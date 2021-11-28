import 'package:flutter/material.dart';
import 'package:flutter_app_template/translations/translation_service.dart';
import 'package:flutter_app_template/routes/app_pages.dart';
import 'package:flutter_app_template/utils/dependency_injection.dart';
import 'package:flutter_app_template/utils/themes.dart';
import 'package:get/get.dart';

void main() async {
  await DependencyInjection.init();

  runApp(GetMaterialApp(
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
  ));
}
