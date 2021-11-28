// import 'package:book_app/models/response/home_model/book_home_model.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

import '../../../api/api_repository.dart';
import '../../../models/response/home_page_model_ui/home_page_model_ui.dart';
import '../../../routes/app_pages.dart';

class HomeController extends GetxController {
  final ApiRepository apiRepository;
  RxInt indexSelected = 0.obs;
  Rx<HomeModelUIModel?> homeApiData = Rx<HomeModelUIModel?>(null);
  HomeController({required this.apiRepository}) {
    EasyLoading.show();
    apiRepository.getDataHomeUI().then((value) {
      print(value);

      homeApiData.value = value;
      EasyLoading.dismiss();
    }).catchError((err) {
      print(homeApiData.value);
      EasyLoading.dismiss();
    });
  }
  Future<void> onChangeSelected(int index) async {
    indexSelected.value = index;
    await Get.toNamed(Routes.DETAIL, arguments: indexSelected);
  }
}
