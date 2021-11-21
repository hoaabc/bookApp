import 'package:book_app/models/response/favorite_models/favorite_model.dart';
import 'package:get/get.dart';


import '../../../resource/assets_constant/images_constants.dart';

class FavoriteController extends GetxController {
  List<FavoriteModel> getListHistory() {
    final getListHistory = <FavoriteModel>[];
    final test = FavoriteModel(ImageConstants.appIcon_gotrust_AI, 'Truyen trinh tham',
        'truyen ngu ngon nhan gian');
    for (int i = 0; i < 6; i++) {
      getListHistory.add(test);
    }
    return getListHistory;
  }
  // get _tabController => null;
}
