import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../shared/constants/colors.dart';
import '../../../../shared/styles/text_style/text_style.dart';
import '../../../../shared/widgets/appbar/app_bar_widget.dart';
import '../../../../shared/widgets/profile_pic/profile_pic_widget.dart';
import '../controller/profile_controller.dart';

part 'profile_screen.childern.dart';

class ProfileScreen extends GetView<ProfileController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(context, title: 'Sản phẩm'),
      body: Obx(
        () => Container(
          width: Get.width,
          child: Scrollbar(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(
                    height: 32,
                  ),
                  ProfilePic(
                    onclick: () {
                      print('hihi');
                    },
                    fullName: 'Nguyen Van Hoa',
                    textController: controller.textController,
                    checkEditPhoneNumber: controller.checkEditPhoneNumber.value,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Container(
                    color: Colors.white,
                    padding: const EdgeInsets.symmetric(
                        vertical: 16, horizontal: 16),
                    child: Column(
                      children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Thông tin liên hệ',
                                  style:
                                      TextAppStyle().textPhoneNumberStyle()),
                              InkWell(
                                onTap: () {
                                  controller.editValue(
                                      controller.editTextContrller.value);
                                },
                                child: Text(
                                    controller.editTextContrller.value
                                        ? 'Lưu'
                                        : 'Chỉnh sửa',
                                    style: TextAppStyle()
                                        .textPhoneNumberStyle()),
                              ),
                            ]),
                        _detailEditText(
                            context: context,
                            controller: controller.textControllerName,
                            lable: 'họ và tên',
                            inputType: TextInputType.text,
                            obscureText: false,
                            enableController:
                                controller.editTextContrller.value),
                        _detailEditText(
                            context: context,
                            controller: controller.textControllerPhone,
                            lable: 'Số điện thoại',
                            inputType: TextInputType.text,
                            obscureText: false,
                            enableController:
                                controller.editTextContrller.value),
                        _detailEditText(
                            context: context,
                            controller: controller.textControllerGmail,
                            lable: 'Gmail',
                            inputType: TextInputType.text,
                            obscureText: false,
                            enableController:
                                controller.editTextContrller.value),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
