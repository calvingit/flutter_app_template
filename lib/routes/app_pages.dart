import 'package:get/get.dart';

import '/modules/splash/splash_binding.dart';
import '/modules/splash/splash_page.dart';
import '/modules/home/home_binding.dart';
import '/modules/home/home_page.dart';
import '/modules/login/login_binding.dart';
import '/modules/login/login_Page.dart';
import '/modules/my/change_name/change_name_binding.dart';
import '/modules/my/change_name/change_name_page.dart';
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
    GetPage(
      name: Routes.changeName,
      page: () => ChangeNamePage(),
      binding: ChangeNameBinding(),
    ),
  ];
}
