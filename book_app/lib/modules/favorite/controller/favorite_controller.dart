import 'package:get/get.dart';

import '../../../models/favorite_models/favorite_model.dart';
import '../../../resource/assets_constant/images_constants.dart';

class FavoriteController extends GetxController {
  List<FavoriteModel> getListHistory() {
    final getListHistory = <FavoriteModel>[];
    final test = FavoriteModel(ImageConstants.imageSlider, 'Truyen trinh tham',
        'truyen ngu ngon nhan gian');
    for (int i = 0; i < 6; i++) {
      getListHistory.add(test);
    }
    return getListHistory;
  }
  // get _tabController => null;
}
