import 'package:get/get.dart';

import 'home_controller.dart';
import 'home_repository.dart';
import '/data/api/api_provider.dart';
import '/services/storage.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(
        HomeRepository(
          ApiProvider(),
          StorageService.to,
        ),
      ),
    );
  }
}
