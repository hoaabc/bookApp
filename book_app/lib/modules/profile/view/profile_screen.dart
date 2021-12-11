import 'package:book_app/models/response/profile_ui_model/profile_model_ui.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../shared/constants/colors.dart';
import '../../../../shared/styles/text_style/text_style.dart';
import '../../../../shared/widgets/profile_pic/profile_pic_widget.dart';
import '../controller/profile_controller.dart';

part 'profile_screen.childern.dart';

class ProfileScreen extends GetView<ProfileController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Obx(
          () => controller.profileApiData.value != null
              ? Container(
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
                            checkEditPhoneNumber:
                                controller.checkEditPhoneNumber.value,
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 16, horizontal: 16),
                            child: Column(
                              children: [
                                Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Thông tin liên hệ',
                                          style: TextAppStyle()
                                              .textPhoneNumberStyle()),
                                      InkWell(
                                        onTap: () {
                                          controller.editValue(controller
                                              .editTextContrller.value);
                                        },
                                        child: const SizedBox()
                                        // Text(
                                        //     controller.editTextContrller.value
                                        //         ? 'Lưu'
                                        //         : 'Chỉnh sửa',
                                        //     style: TextAppStyle()
                                        //         .textPhoneNumberStyle()),
                                      ),
                                    ]),
                                const SizedBox(
                                  height: 24,
                                ),
                                _viewProfile(
                                    profile: controller.profileApiData.value)
                              ],
                            ),
                          ),
                          const SizedBox(
                                  height: 24,
                                ),
                          InkWell(
                            onTap: () {
                              controller.onLogoutPressed();
                            },
                            child: Container(
                                width: Get.width,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 16),
                                child: Text(' Log out',
                                    textAlign: TextAlign.center,
                                    style: TextAppStyle().textFullNameStyle())),
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
                )
              : const SizedBox(),
        ),
      ),
    );
  }
}
