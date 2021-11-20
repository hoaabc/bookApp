import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

import '../../../api/api_repository.dart';
import '../../../models/response/book_detail_model/book_detail_model.dart';

class DetailController extends GetxController {
  final ApiRepository apiRepository;
  Rx<BookDetailModel?> apiBookInfo = Rx<BookDetailModel?>(null);
  DetailController(this.apiRepository);
  @override
  Future<void> onInit() async {
    super.onInit();
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
    final _bookInfo = await apiRepository.getDataBookDetail(idBook: '8');
    apiBookInfo.value = _bookInfo;
  }
}
