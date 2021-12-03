import '/routes/app_pages.dart';
import 'package:get/get.dart';

import 'profile_repository.dart';

class ProfileController extends GetxController {
  final ProfileRepository repository;
  ProfileController(this.repository);

  @override
  void onReady() {
    
  }
}

  