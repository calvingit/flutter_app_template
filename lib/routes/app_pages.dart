import 'package:get/get.dart';

import '/pages/splash/splash_binding.dart';
import '/pages/splash/splash_page.dart';
import '/pages/home/home_binding.dart';
import '/pages/home/home_page.dart';
import '/pages/login/login_binding.dart';
import '/pages/login/login_Page.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const initial = Routes.splash;

  static final routes = [
    GetPage(
      name: Routes.splash,
      page: () => const SplashPage(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: Routes.login,
      page: () => const LoginPage(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: Routes.home,
      page: () => const HomePage(),
      binding: HomeBinding(),
    ),
  ];
}
