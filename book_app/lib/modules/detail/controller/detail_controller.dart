import 'dart:async';

import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

import '../../../api/api_repository.dart';
import '../../../models/response/detail_book_ui_models/detail_book_model.dart';

class DetailController extends GetxController {
  final ApiRepository apiRepository;
  Rx<DetailBookUIModel?> apiBookInfo = Rx<DetailBookUIModel?>(null);

  RxInt indexSelected = 0.obs;
  DetailController(this.apiRepository);
  @override
  Future<void> onInit() async {
    super.onInit();
    indexSelected = await Get.arguments;
    await loadData();
  
  }

  Future<void> loadData() async {
    await EasyLoading.show(status: 'Loading...');
    try {
      await loadBookInfo();
    } catch (_e) {
      print("Error");
    } finally {
      await EasyLoading.dismiss();
    }
  }

  Future<void> loadBookInfo() async {
    final _bookInfo = await apiRepository.getDataBookDetail(
        id: indexSelected.value.toString());
    apiBookInfo.value = _bookInfo;
  }

 

}
