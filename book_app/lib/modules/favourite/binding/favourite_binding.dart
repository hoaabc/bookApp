import 'package:book_app/modules/favourite/controller/favourite_controller.dart';
import 'package:get/get.dart';

class FovouriteBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FovouriteController>(() => FovouriteController());
  }
}
