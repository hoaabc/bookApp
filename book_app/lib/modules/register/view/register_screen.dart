import 'package:book_app/modules/register/controller/register_controller.dart';
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
import '../controller/register_controller.dart';

class RegisterScreen extends GetView<RegisterController> {
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
                  Form(
                    // key: controller.registerFormkey,
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
                            Text('Đăng ký',
                                style: TextAppStyle().textRestPasswordStyle()),
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

                              // validator: controller.requiredValidator,
                              obscureText: !controller.showWallet.value,
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
                            // InkWell(
                            //   onTap: () {},
                            //   child: Container(
                            //     alignment: Alignment.bottomRight,
                            //     child: Text('Đăng ký',
                            //         textAlign: TextAlign.end,
                            //         style:
                            //             TextAppStyle().textAddressStyle()),
                            //   ),
                            // ),
                            TextInputLogin(
                              onChanged: (text) {
                                controller.setUserName(text);
                              },
                              //validator: controller.emailValidator,
                              obscureText: false,
                              inputType: TextInputType.name,
                              hint: 'User Name',
                            ),
                            const SizedBox(height: 16),
                            TextInputLogin(
                              onChanged: (text) {
                                controller.setFullname(text);
                              },
                              //validator: controller.emailValidator,
                              obscureText: false,
                              inputType: TextInputType.name,
                              hint: 'Full Name',
                            ),
                            const SizedBox(height: 16),
                            TextInputLogin(
                              onChanged: (text) {
                                controller.setPhone(text);
                              },
                              //validator: controller.emailValidator,
                              obscureText: false,
                              inputType: TextInputType.phone,
                              hint: 'Phone number',
                            ),

                            const SizedBox(height: 32),
                            inputInformationButton(
                              onButtonPressed: () {
                                Navigator.of(context).pop();
                              },
                              titleButton: 'Đăng ký',
                              colorText: AppColor.secondTextColorLight,
                              color: AppColor.eightTextColorLight,
                            ),

                            const SizedBox(height: 32),
                          ],
                        )),
                  )
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
