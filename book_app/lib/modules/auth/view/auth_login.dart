import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../resource/assets_constant/images_constants.dart';
import '../../../routes/app_pages.dart';
import '../../../shared/styles/text_style/text_style.dart';
import '../../../shared/widgets/button/gradient_button.dart';
import '../../../shared/widgets/image_widget/fcore_image.dart';
import '../../../shared/widgets/text_input/input_widget.dart';
import '../controller/auth_controller.dart';

class AuthuLoginScreen extends GetView<AuthController> {
   AuthuLoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            child: SingleChildScrollView(
                child: Column(
              children: [
                const SizedBox(height: 32),
                FCoreImage(ImageConstants.imageBackgroundImage),
                const SizedBox(height: 16),
                InputWidget(
                  hintText: 'User name',
                  obscureText: true,
                  controller: controller.userNameController,
                ),
                const SizedBox(height: 16),
                InputWidget(
                  hintText: 'PassWord',
                  obscureText: false,
                  controller: controller.passWordController,
                ),
                const SizedBox(height: 16),
                AppGradientButton(
                  onPressed: () {
                    Get.toNamed(Routes.HOME);
                  },
                  child: Text(
                    'login',
                    style: TextAppStyle().textEnableButtonStyle(),
                  ),
                ),
                const SizedBox(height: 16),
              ],
            ))),
      ),
    );
  }
}
