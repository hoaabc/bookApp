import 'package:book_app/shared/widgets/button/button_custom.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../resource/assets_constant/images_constants.dart';
import '../../../shared/constants/colors.dart';
import '../../../shared/styles/text_style/text_style.dart';
import '../../../shared/widgets/image_widget/fcore_image.dart';
import '../../../shared/widgets/text_input_login/text_input_login.dart';
import '../controller/auth_controller.dart';


class LoginScreen extends GetView<AuthController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
        body: SingleChildScrollView(
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
                      padding: const EdgeInsets.only(top: 32),
                      alignment: Alignment.topCenter,
                      child: FCoreImage(ImageConstants.ic_logo_gotrust_login,
                          height: 120, width: 120, fit: BoxFit.cover)),
                  const SizedBox(height: 16),
                  Obx(() => Form(
                        key: controller.formKey,
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
                                Text('Đăng nhập',
                                    style:
                                        TextAppStyle().textRestPasswordStyle()),
                                const SizedBox(height: 16),
                                TextInputLogin(
                                  validator: controller.emailValidator,
                                  obscureText: false,
                                  inputType: TextInputType.emailAddress,
                                  value: controller.email.value,
                                  hint: 'Email',
                                ),
                                const SizedBox(height: 16),
                                TextInputLogin(
                                  validator: controller.requiredValidator,
                                  obscureText: !controller.showWallet.value,
                                  value: controller.passWord.value,
                                  suffixIcon: IconButton(
                                    onPressed: () {
                                      controller.ChageshowWallet(
                                          controller.showWallet.value);
                                    },
                                    icon: Icon(
                                      controller.showWallet.value
                                          ? Icons.visibility_off_outlined
                                          : Icons.visibility_outlined,
                                      color: AppColor.primaryTextColorLight,
                                    ),
                                  ),
                                  //onChanged:
                                  hint: 'Password',
                                ),
                                const SizedBox(height: 16),
                                InkWell(
                                  onTap: () {
                                    
                                  },
                                  child: Container(
                                    alignment: Alignment.bottomRight,
                                    child: Text('Quên mật khẩu?',
                                        textAlign: TextAlign.end,
                                        style:
                                            TextAppStyle().textAddressStyle()),
                                  ),
                                ),
                                const SizedBox(height: 32),
                                inputInformationButton(
                                  onButtonPressed: () {
                                    
                                    controller.onSavePressed();
                                  },
                                  titleButton: 'Đăng nhập',
                                  colorText: AppColor.secondTextColorLight,
                                  color: AppColor.eightTextColorLight,
                                ),
                                const SizedBox(height: 32),
                                Center(
                                  child: Column(
                                    children: [
                                      Text('Dùng tài khoản thử nghiệm?',
                                          textAlign: TextAlign.center,
                                          style: TextAppStyle()
                                              .textTitleExpantedStyle()),
                                      const SizedBox(height: 4),
                                      InkWell(
                                        onTap: () {
                                          controller.onAnonymousLoginPressed();
                                        },
                                        child: Text('Đăng nhập ngay',
                                            textAlign: TextAlign.center,
                                            style: TextAppStyle()
                                                .textStyleNoteLoginStyle()),
                                      ),
                                    ],
                                  ),
                                ),
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
