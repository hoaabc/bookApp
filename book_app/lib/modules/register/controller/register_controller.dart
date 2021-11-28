import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../api/api.dart';
import '../../../models/models.dart';
import '../../../routes/app_pages.dart';
import '../../../shared/constants/storage.dart';
import '../../../shared/utils/product_form_ultilies.dart';

class RegisterController extends GetxController with ProductForm {
  Rx<RegisterResponse?> apiRegisData = Rx<RegisterResponse?>(null);
  RxBool showWallet = false.obs;
  Future<void> ChageshowWallet(bool changeshowWallet) async {
    showWallet.value = !changeshowWallet;
  }

  ApiRepository apiRepository;
  RegisterController({required this.apiRepository});
  RxString email = RxString('');
  RxString passWord = RxString('');
  RxString username = RxString('');
  RxString fullname = RxString('');
  RxString phone = RxString('');

  Future<void> setPass(String text) async {
    passWord.value = text;
  }

  Future<void> setEmail(String text) async {
    email.value = text;
  }

  Future<void> setPhone(String text) async {
    phone.value = text;
  }

  Future<void> setUserName(String text) async {
    username.value = text;
  }

  Future<void> setFullname(String text) async {
    fullname.value = text;
  }

  final registerEmailController = TextEditingController();
  final registerPasswordController = TextEditingController();
  final registerUserNameController = TextEditingController();
  final registerPhoneController = TextEditingController();
  final registerFullNameController = TextEditingController();

  // final GlobalKey<FormState> registerFormkey = GlobalKey<FormState>();
  Future<void> register() async {
    Get.toNamed(Routes.AUTH);
    // try {
    //AppFocus.unfocus(context);
    // if (registerFormkey.currentState!.validate()) {
    //   apiRegisData.value = await apiRepository.register(
    //     RegisterRequest(
    //       email: email.value,
    //       password: passWord.value,
    //     ),
    //   );

    //   final prefs = Get.find<SharedPreferences>();
    //   if (apiRegisData.value?.token != null) {
    //     await prefs.setString(StorageConstants.token,
    //         apiRegisData.value?.token.toString() ?? '');
    //     await Get.toNamed(Routes.AUTH);
    //   }
    //   // else {
    //   //   ScaffoldMessenger.of(Get.context!).showSnackBar(const SnackBar(
    //   //     content: Text('Tài khoản hoặc mật khẩu không chính xác'),
    //   //   ));
    //   // }

    // }
    //   } catch (_e) {
    //     // print(apiLoginData.value?.accessToken);
    //     // ScaffoldMessenger.of(Get.context!).showSnackBar(const SnackBar(
    //     //   content: Text('Tài khoản hoặc mật khẩu không chính xác'),
    //     // ));

    //   } finally {
    //     await EasyLoading.dismiss();
    //   }
  }
}
