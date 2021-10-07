import 'package:get/get.dart';

import 'home_repository.dart';

class HomeController extends GetxController {
  final HomeRepository repository;
  HomeController(this.repository);

  final images = RxList.empty();
}
