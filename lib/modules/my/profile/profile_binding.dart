import 'package:get/get.dart';
import 'profile_controller.dart';
import 'profile_repository.dart';

class ProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfileController>(
      () => ProfileController(ProfileRepository()),
    );
  }
}
