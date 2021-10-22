import 'package:get/get.dart';

import '../../../modules/about/controller/about_controller.dart';
import '../../../modules/home/controller/home_controller.dart';
import '../controller/bottom_navigation_controller.dart';

class BottomNavigationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BottomNavigationController>(() => BottomNavigationController());
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<AboutController>(() => AboutController());
  }
}
