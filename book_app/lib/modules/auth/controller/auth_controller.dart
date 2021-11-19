import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../api/api.dart';
import '../../../models/models.dart';
import '../../../routes/app_pages.dart';
import '../../../shared/utils/product_form_ultilies.dart';

class AuthController extends GetxController with ProductForm {
  RxBool showWallet = false.obs;
  Future<void> ChageshowWallet(bool changeshowWallet) async {
    showWallet.value = !changeshowWallet;
  }

  ApiRepository apiRepository;
  AuthController(this.apiRepository);
  RxString email = RxString('');
  RxString passWord = RxString('');

  Future<void> setPass(String text) async {
    email.value = text;
  }

  Future<void> setEmail(String text) async {
    passWord.value = text;
  }

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  Function? onSavePressed() {
    if (formKey.currentState?.validate() ?? false) {
      apiRepository
          .login(LoginRequest(email: email.value, password: passWord.value))
          .then((value) {
        if (value != null) {
          Get.toNamed(Routes.ONBOARDING_SCREEN);
        } else {
          ScaffoldMessenger.of(Get.context!).showSnackBar(const SnackBar(
            content: Text('Tài khoản hoặc mật khẩu không chính xác'),
          ));
        }
      });
    }
    return null;
  }

  Future<void> onAnonymousLoginPressed() async {
    email.value = 'book_demo@gmail.com';
    passWord.value = 'TestPassword@';
  }
}
