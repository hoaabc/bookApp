import 'package:book_app/api/api_repository.dart';
import 'package:book_app/models/response/profile_orther_model_ui/profile_orther_model_ui.dart';
import 'package:book_app/models/response/profile_ui_model/profile_model_ui.dart';
import 'package:book_app/routes/app_pages.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

class ProfileOrtherController extends GetxController {
  final ApiRepository apiRepository;
  RxInt indexSelected = 0.obs;
  RxInt userID = 0.obs;
  Rx<ProfileOrtherUIModel?> profileApiData = Rx<ProfileOrtherUIModel?>(null);
  ProfileOrtherController({required this.apiRepository}) {
    fetchData();
  }
  @override
  Future<void> onInit() async {
    super.onInit();

    userID = await Get.arguments;
  }

  Future<void> fetchData() async {
    try {
      await EasyLoading.show(status: 'Loading...');
      final _uiData =
          await apiRepository.getDataUserOrthers(id: userID.toString());
      profileApiData.value = _uiData;
    } catch (e) {
      print(e);
    }
  }
}
