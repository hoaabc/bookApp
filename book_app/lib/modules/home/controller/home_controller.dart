import 'package:book_app/models/home_model/home_models.dart';
import 'package:book_app/resource/assets_constant/images_constants.dart';

import 'package:get/get.dart';

class HomeController extends GetxController {
  List<String> getListSliderImage() {
    final lstSlider = <String>[];
    final test = ImageConstants.imageSlider;
    for (int i = 0; i < 5; i++) {
      lstSlider.add(test);
    }
    return lstSlider;
  }

  List<ItemModel> getListHistory() {
    final getListHistory = <ItemModel>[];
    final test = ItemModel('Truyen trinh tham', ImageConstants.imageSlider);
    for (int i = 0; i < 6; i++) {
      getListHistory.add(test);
    }
    return getListHistory;
  }
}
