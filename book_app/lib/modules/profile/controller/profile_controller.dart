import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../api/api_repository.dart';
import '../../../models/response/profile_ui_model/profile_model_ui.dart';
import '../../../routes/app_pages.dart';

class ProfileController extends GetxController {
  RxBool checkEditPhoneNumber = false.obs;
  RxBool editTextContrller = false.obs;
  final ApiRepository apiRepository;
  Rx<ProfileUIModel?> profileApiData = Rx<ProfileUIModel?>(null);
  ProfileController({required this.apiRepository}) {
    EasyLoading.show();
    apiRepository.getDataProfileUI().then((value) {
      print(value);

      profileApiData.value = value;
      EasyLoading.dismiss();
    }).catchError((err) {
      print(profileApiData.value);
      EasyLoading.dismiss();
    });
  }
  Future<void> editValue(bool editChangeDataTextContrller) async {
    editTextContrller.value = !editChangeDataTextContrller;
  }

  Future<void> onLogoutPressed() async {
    final pref = await SharedPreferences.getInstance();
    await pref.clear();
    await Get.offAllNamed(Routes.AUTH);
  }
}
