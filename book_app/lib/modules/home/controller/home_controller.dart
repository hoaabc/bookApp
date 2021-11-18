import 'package:get/get.dart';

import '../../../api/api_repository.dart';
import '../../../models/home_model/home_models.dart';
import '../../../models/response/author_model/author_model.dart';
import '../../../resource/assets_constant/images_constants.dart';

class HomeController extends GetxController {
  final ApiRepository apiRepository;
  Rx<GetDataAuthor?> authorInfo = Rx<GetDataAuthor?>(null);
  HomeController({required this.apiRepository});

  @override
  Future<void> onInit() async {
    super.onInit();
    await loadAuthor();
  }

  Future<void> loadAuthor() async {
    final _authorInfo = await apiRepository.getDataAuthors();
    print(_authorInfo);
    authorInfo.value = _authorInfo;
  }

  List<String> getListSliderImage() {
    final lstSlider = <String>[];
    final test = ImageConstants.appIcon_gotrust_AI;
    for (int i = 0; i < 5; i++) {
      lstSlider.add(test);
    }
    return lstSlider;
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
