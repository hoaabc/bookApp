import 'package:get/get.dart';

import '../controller/profile_orther_controller.dart';

class ProfileOrtherBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfileOrtherController>(
        () => ProfileOrtherController(apiRepository: Get.find()));
  }
}
