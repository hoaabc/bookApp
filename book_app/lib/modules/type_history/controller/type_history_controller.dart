import 'package:book_app/modules/type_history/view/type_history_screen.dart';
import 'package:get/get.dart';

import '../../../models/home_model/home_models.dart';
import '../../../resource/assets_constant/images_constants.dart';

class TypeHistoryController extends GetxController {
  List<String> getListSliderImage() {
    final lstSlider = <String>[];
    final test = ImageConstants.appIcon_gotrust_AI;
    for (int i = 0; i < 5; i++) {
      lstSlider.add(test);
    }
    return lstSlider;
  }

  List<TypeModel> titleList() {
    final getListHistory = <TypeModel>[];
    final test = TypeModel(
      ImageConstants.imageBackgroundImage,
      'Truyen trinh tham',
    );
    for (int i = 0; i < 4; i++) {
      getListHistory.add(test);
    }
    return getListHistory;
  }

  List<ItemModel> getListHistory() {
    final getListHistory = <ItemModel>[];
    final test =
        ItemModel('Truyen trinh tham', ImageConstants.appIcon_gotrust_AI);
    for (int i = 0; i < 6; i++) {
      getListHistory.add(test);
    }
    return getListHistory;
  }
}
