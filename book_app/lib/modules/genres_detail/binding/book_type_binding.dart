import 'package:get/get.dart';

import '../controller/genres_detail_controller.dart';

class GenresDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GenresDetailController>(
        () => GenresDetailController(apiRepository: Get.find()));
  }
}
