// ignore_for_file: file_names, constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'en_US.dart';
import 'zh_Hans.dart';
import 'zh_Hant.dart';

/*

https://developer.apple.com/library/archive/documentation/MacOSX/Conceptual/BPInternational/LanguageandLocaleIDs/LanguageandLocaleIDs.html
https://www.ibabbleon.com/iOS-Language-Codes-ISO-639.html

*/

class TranslationService extends Translations {
  static Locale? get locale => Get.deviceLocale;
  static const fallbackLocale = Locale('en', 'US');
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': en_US, // 英文
        'zh_Hans': zh_Hans, // 简体中文
        'zh_Hant': zh_Hant, // 繁体中文
        'zh-HK': zh_Hant, // 香港繁体
      };
}
