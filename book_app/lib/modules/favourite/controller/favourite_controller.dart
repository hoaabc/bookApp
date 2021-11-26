import 'package:book_app/models/response/favorite_models/favorite_model.dart';
import 'package:book_app/models/response/home_model/book_home_model.dart';
import 'package:book_app/resource/assets_constant/images_constants.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

import '../../../api/api_repository.dart';

import '../../../models/response/author_model/author_model.dart';
import '../../../models/response/slider_model/slider_model.dart';

class FavouriteController extends GetxController {
  ApiRepository apiRepository;
  Rx<GetDataAuthor?> authorInfo = Rx<GetDataAuthor?>(null);
  Rx<ListSlider?> apiSlider = Rx<ListSlider?>(null);
  Rx<BookList?> apiBookHome = Rx<BookList?>(null);
  FavouriteController(this.apiRepository) {
    loadData();
  }
  @override
  Future<void> onInit() async {
    super.onInit();
  }

  Future<void> loadData() async {
    await EasyLoading.show(status: 'Loading...');
    try {
      await loadAuthor();
      await loadSlider();
      await loadBookHome();
    } catch (_e) {
      print("Error");
    } finally {
      await EasyLoading.dismiss();
    }
  }

  Future<void> loadAuthor() async {
    final _authorInfo = await apiRepository.getDataAuthors();
    authorInfo.value = _authorInfo;
  }

  Future<void> loadSlider() async {
    final _apiSlider = await apiRepository.getDataSlider();
    apiSlider.value = _apiSlider;
  }

  Future<void> loadBookHome() async {
    final _apiBookHome = await apiRepository.getDataAllBookHome();
    apiBookHome.value = _apiBookHome;
  }

  List<FavoriteModel> getListHistory() {
    final getListHistory = <FavoriteModel>[];
    final test = FavoriteModel(ImageConstants.appIcon_gotrust_AI,
        'Truyen trinh tham', 'truyen ngu ngon nhan gian');
    for (int i = 0; i < 20; i++) {
      getListHistory.add(test);
    }
    return getListHistory;
  }
}
