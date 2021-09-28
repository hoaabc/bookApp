import 'package:flutter/material.dart';
import 'package:get/get.dart';


/// Define color at theme_data.dart
class TextAppStyle {
  static const String appFont = 'Mulish';

  TextStyle versionTextStyle() {
    return Get.theme.textTheme.headline5!;
  }

  TextStyle versionContentTextStyle() {
    /// headline4 Color: fourthTextColor -> Green
    return Get.theme.textTheme.headline4!;
  }

  TextStyle textEnableButtonStyle() {
    /// headline2 Color: secondTextColor -> White
    return TextStyle(
      color: Get.theme.textTheme.headline2!.color,
      fontSize: 16,
      fontWeight: FontWeight.w600,
    );
  }

  TextStyle textDisableButtonStyle() {
    /// headline4 Color: fourthTextColor -> Green
    return TextStyle(
      color: Get.theme.textTheme.headline4!.color,
      fontSize: 16,
      fontWeight: FontWeight.w500,
    );
  }


  TextStyle hintTextFormFieldStyle() {
    /// headline5 Color: fifthTextColor -> Gray
    return TextStyle(
      color: Get.theme.textTheme.headline5!.color,
      fontSize: 14,
      fontWeight: FontWeight.normal,
    );
  }


}
