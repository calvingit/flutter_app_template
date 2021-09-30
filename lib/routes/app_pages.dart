import 'package:get/get.dart';

import 'package:get_cli_demo/app/modules/home/bindings/home_binding.dart';
import 'package:get_cli_demo/app/modules/home/views/home_view.dart';
import 'package:get_cli_demo/app/modules/login/bindings/login_binding.dart';
import 'pages/login/login_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.home;

  static final routes = [
    GetPage(
      name: Routes.login,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.login,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
  ];
}
