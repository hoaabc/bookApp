import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

import '../../../api/api_repository.dart';
import '../../../models/response/book_item_ui_moel/ui_item.dart';


class FavoriteController extends GetxController {
    final ApiRepository apiRepository;
  Rx<List<UIItem>?> favoriteApiData = Rx<List<UIItem>?>(null);
  Rx<List<UIItem>?> recentApiData = Rx<List<UIItem>?>(null);
  FavoriteController({required this.apiRepository}){
    _getFavoriteData();
    _getRecentData();
  }
    @override
  Future<void> onInit() async {
     
    await _getFavoriteData();
    await _getRecentData();
    super.onInit();
  }
   Future<void> _getFavoriteData() async {
    await EasyLoading.show();
    try {
      favoriteApiData.value = await apiRepository.getDataFavoriteUI();
    } catch (e) {
      print(e);
       await EasyLoading.show(status: '...Không tải được dữ liệu');
    } finally {
      await EasyLoading.dismiss();
    }
  }
  // get _tabController => null;
     Future<void> _getRecentData() async {
    await EasyLoading.show();
    try {
      recentApiData.value = await apiRepository.getDataRecentUI();
    } catch (e) {
      print(e);
       await EasyLoading.show(status: '...Không tải được dữ liệu');
    } finally {
      await EasyLoading.dismiss();
    }
  }
}
