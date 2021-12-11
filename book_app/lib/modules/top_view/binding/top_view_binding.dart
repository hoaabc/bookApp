import 'package:book_app/modules/top_view/controller/top_view_controller.dart';
import 'package:get/get.dart';

class TopViewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TopViewController>(
        () => TopViewController(apiRepository: Get.find()));
  }
}
