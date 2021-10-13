import 'package:book_app/shared/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

part 'home_page_style/home_page_style.dart';


/// Define color at theme_data.dart
class TextAppStyle {
  static const String appFont = 'Mulish';

  TextStyle versionTextStyle() {
    return Get.theme.textTheme.headline5!;
  }

  TextStyle textEnableButtonStyle() {
    /// headline2 Color: secondTextColor -> White
    return TextStyle(
      color: Get.theme.textTheme.headline2!.color,
      fontSize: 16,
      fontWeight: FontWeight.w600,
    );
  }

  TextStyle textAppBarColorStyle() {
    /// headline2 Color: secondTextColor -> White
    return TextStyle(
      color: Get.theme.textTheme.headline2!.color,
      fontSize: 17,
      fontWeight: FontWeight.w600,
      fontFamily: 'Montserrat',
    );
  }

 
}
