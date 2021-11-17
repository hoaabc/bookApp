import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../../../shared/utils/product_form_ultilies.dart';

class AuthController extends GetxController with ProductForm {
  RxBool showWallet = false.obs;
  Future<void> ChageshowWallet(bool changeshowWallet) async {
    showWallet.value = !changeshowWallet;
  }

  Rx<String> email = Rx<String>('');
  Rx<String> passWord = Rx<String>('');

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  Function? onSavePressed() {
    if (formKey.currentState?.validate() ?? false) {
      
    }
    return null;
  }

  Future<void> onAnonymousLoginPressed() async {
    email.value = 'aicare_demo@gmail.com';
    passWord.value = 'TestPassword@';
  }
}
