import 'package:get/get.dart';

import '../controller/type_history_controller.dart';



class TypeHistoryBinding extends Bindings {
  @override
  void dependencies() {
     Get.lazyPut<TypeHistoryController>(() => TypeHistoryController());
  }

}