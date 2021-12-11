import 'package:book_app/api/api_repository.dart';
import 'package:book_app/models/response/book_item_ui_moel/ui_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

class GenresDetailController extends GetxController {
  final ApiRepository apiRepository;
  Rx<List<UIItem>?> detailGenerApiData = Rx<List<UIItem>?>(null);
  RxInt indexSelectedType = 0.obs;
  @override
  Future<void> onInit() async {
    super.onInit();
    indexSelectedType = await Get.arguments;
  }

  GenresDetailController({required this.apiRepository}) {
    getListBookGener();
  }
  Future<void> getListBookGener() async {
    try {
      await EasyLoading.show(status: 'Loading...');
      detailGenerApiData.value = await apiRepository.getGenresDetailUI(
          idGenres: indexSelectedType.value);
      await EasyLoading.show(status: 'Loading...');
    } catch (e) {
      throw Exception();
    } finally {
      await EasyLoading.dismiss();
    }
  }
}
