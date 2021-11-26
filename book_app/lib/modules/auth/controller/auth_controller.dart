import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../api/api.dart';
import '../../../models/models.dart';
import '../../../routes/app_pages.dart';
import '../../../shared/constants/storage.dart';
import '../../../shared/utils/focus.dart';
import '../../../shared/utils/product_form_ultilies.dart';

class AuthController extends GetxController with ProductForm {
  Rx<LoginResponseUIModel?> apiLoginData = Rx<LoginResponseUIModel?>(null);
  RxBool showWallet = false.obs;
  Future<void> ChageshowWallet(bool changeshowWallet) async {
    showWallet.value = !changeshowWallet;
  }

  ApiRepository apiRepository;
  AuthController({required this.apiRepository});
  RxString email = RxString('');
  RxString passWord = RxString('');

  Future<void> setPass(String text) async {
    passWord.value = text;
  }

  Future<void> setEmail(String text) async {
    email.value = text;
  }

  final loginEmailController = TextEditingController();
  final loginPasswordController = TextEditingController();

  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  Future<void> login(BuildContext context) async {
    try {
      AppFocus.unfocus(context);
      if (loginFormKey.currentState!.validate()) {
        apiLoginData.value = await apiRepository.login(
          LoginRequest(
            email: email.value,
            password: passWord.value,
          ),
        );

        final prefs = Get.find<SharedPreferences>();
        if (apiLoginData.value?.accessToken != null) {
          await prefs.setString(StorageConstants.token,
              apiLoginData.value?.accessToken.toString() ?? '');
          await Get.toNamed(Routes.HOME);
        } else {
          ScaffoldMessenger.of(Get.context!).showSnackBar(const SnackBar(
            content: Text('Tài khoản hoặc mật khẩu không chính xác'),
          ));
        }
      }
    } catch (_e) {
      print(apiLoginData.value?.accessToken);
      print("Error");
    } finally {
      await EasyLoading.dismiss();
    }
  }

  @override
  void onClose() {
    super.onClose();
    loginEmailController.dispose();
    loginPasswordController.dispose();
  }
}
