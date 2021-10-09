import 'package:book_app/modules/about/controller/about_controller.dart';
import 'package:get/get.dart';

class AboutBinding extends Bindings {
  @override
  void dependencies() {
     Get.lazyPut<AboutController>(() => AboutController());
  }

}