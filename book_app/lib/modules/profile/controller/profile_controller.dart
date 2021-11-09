import 'package:flutter/material.dart';
import 'package:get/get.dart';


class ProfileController extends GetxController {
  TextEditingController textController = TextEditingController();
  TextEditingController textControllerName = TextEditingController();
  TextEditingController textControllerPhone = TextEditingController();
  TextEditingController textControllerJob = TextEditingController();
  TextEditingController textControllerGmail = TextEditingController();
  TextEditingController textControllerAddress = TextEditingController();
  RxBool checkEditPhoneNumber = false.obs;
  RxBool editTextContrller = false.obs;
  @override
  Future<void> onInit() async {
     super.onInit();
    textController.text = '0949520035';
    textControllerName.text = 'Nguyễn Văn A';
    textControllerPhone.text = '023625321';
    textControllerJob.text = 'Giáo viên tiếng anh';
    textControllerGmail.text = 'nguyenvana123@gmail.com';
    textControllerAddress.text = '124 Vườn Lài, P. Phú Thạnh, Quận Tân Phú';
  }

  Future<void> editValue(bool editChangeDataTextContrller) async {
    editTextContrller.value = !editChangeDataTextContrller;
  }


}
