import 'package:get/get.dart';

import '../../../models/home_model/home_models.dart';
import '../../../resource/assets_constant/images_constants.dart';

class BottomNavigationController extends GetxController {
  RxInt tabIndex = 0.obs;

  Future<void> changeTabIndex(int index) async {
    tabIndex.value = index;
  }
}
