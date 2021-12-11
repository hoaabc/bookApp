import 'package:book_app/api/api_repository.dart';
import 'package:book_app/models/response/book_item_ui_moel/ui_item.dart';
import 'package:book_app/routes/app_pages.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

class TopViewController extends GetxController {
  final ApiRepository apiRepository;
  Rx<List<UIItem>?> favoriteApiData = Rx<List<UIItem>?>(null);
  RxInt indexSelected = 0.obs;
  TopViewController({required this.apiRepository}) {
    getListTopView();
  }

  Future<void> getListTopView() async {
    try {
      await EasyLoading.show(status: 'Loading...');
      favoriteApiData.value = await apiRepository.getTopViewBooktUI();
    
    } catch (e) {
      throw Exception();
    }finally {
      await EasyLoading.dismiss();
    }
  }

  Future<void> onChangeSelected(int index) async {
    indexSelected.value = index;
    await Get.toNamed(Routes.DETAIL, arguments: indexSelected);
  }
}
