import 'package:book_app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../resource/assets_constant/images_constants.dart';
import '../../../shared/constants/colors.dart';
import '../../../shared/styles/text_style/text_style.dart';
import '../../../shared/utils/regex.dart';
import '../../../shared/widgets/button/button_custom.dart';
import '../../../shared/widgets/image_widget/fcore_image.dart';
import '../../../shared/widgets/text_input_login/text_input_login.dart';
import '../controller/auth_controller.dart';

class RegisterScreen extends GetView<AuthController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        child: SingleChildScrollView(
          child: Stack(children: [
            Container(
              height: Get.height * 2 / 3,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(ImageConstants.background_login),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Column(
                children: [
                  Container(
                      padding: const EdgeInsets.only(top: 20),
                      alignment: Alignment.topCenter,
                      child: FCoreImage(ImageConstants.ic_logo_book_app_login,
                          height: 160, width: 160, fit: BoxFit.cover)),
                  const SizedBox(height: 8),
                  Obx(() => Form(
                        // key: controller.loginFormKey,
                        child: Container(
                            decoration: BoxDecoration(
                              color: AppColor.secondBackgroundColorLight,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(15.0)),
                            ),
                            margin: const EdgeInsets.symmetric(horizontal: 16),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 24),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Đăng Ký',
                                    style:
                                        TextAppStyle().textRestPasswordStyle()),
                                const SizedBox(height: 16),
                                TextInputLogin(
                                  onChanged: (text) {
                                    controller.setEmail(text);
                                  },
                                  //validator: controller.emailValidator,
                                  obscureText: false,
                                  inputType: TextInputType.emailAddress,
                                  hint: 'Email',
                                ),
                                const SizedBox(height: 16),
                                TextInputLogin(
                                  onChanged: (text) {
                                    controller.setPass(text);
                                  },

                                  validator: controller.requiredValidator,
                                  obscureText: controller.obscurePassword.value,
                                  // suffixIcon: IconButton(
                                  //   onPressed: () {
                                  //     controller.ChageshowWallet();
                                  //   },
                                  //   icon: Icon(
                                  //     controller.obscurePassword.value
                                  //         ? Icons.visibility_off_outlined
                                  //         : Icons.visibility_outlined,
                                  //     color: AppColor.primaryTextColorLight,
                                  //   ),
                                  // ),
                                  //onChanged:
                                  hint: 'Password',
                                ),
                                const SizedBox(height: 32),
                                inputInformationButton(
                                  onButtonPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  titleButton: 'Đăng nhập',
                                  colorText: AppColor.secondTextColorLight,
                                  color: AppColor.eightTextColorLight,
                                ),
                                const SizedBox(height: 32),
                              ],
                            )),
                      ))
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
