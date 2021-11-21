import 'package:get/get.dart';
import '../controller/dashboard_controller.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashBoardController>(() => DashBoardController());
    //Get.put<DashBoardController>(DashBoardController());
    // Get.lazyPut<DashBoardController>(DashBoardController());
  }
}
