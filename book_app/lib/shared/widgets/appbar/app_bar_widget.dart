import 'package:book_app/routes/app_pages.dart';
import 'package:book_app/shared/styles/text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../resource/assets_constant/icon_constants.dart';
import '../../constants/colors.dart';
import '../../constants/common.dart';
import '../image_widget/fcore_image.dart';

PreferredSizeWidget appbar(BuildContext context,
    {String title = APP_NAME, IconButton? leadingIcon}) {
  return AppBar(
    title: Text(
      title,
      style: const TextStyle(
        fontSize: 17,
        fontWeight: FontWeight.w600,
        fontFamily: TextAppStyle.appFont,
        color: Colors.white,
      ),
    ),
    elevation: 0,
    flexibleSpace: Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            AppColor.color45C152,
            AppColor.color0ADC90,
          ],
        ),
      ),
    ),
    centerTitle: true,
    leading: leadingIcon ??
        IconButton(
          icon: const Icon(Icons.arrow_back_rounded, color: Colors.white),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
    actions: [
      IconButton(
        icon: FCoreImage(
          IconConstants.menu,
          fit: BoxFit.fitHeight,
        ),
        onPressed: () {
          Get.toNamed(Routes.HOME);
        },
        color: Colors.white,
      ),
    ],
  );
}
