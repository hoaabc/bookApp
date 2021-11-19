import 'package:book_app/shared/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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

// style app
  TextStyle textFullNameStyle() {
    return TextStyle(
      color: AppColor.primaryTextColorLight,
      fontSize: 17,
      fontWeight: FontWeight.w700,
    );
  }

  TextStyle textPhoneNumberStyle() {
    return TextStyle(
      color: AppColor.primaryTextColorLight,
      fontSize: 14,
      fontWeight: FontWeight.w600,
    );
  }

  TextStyle textWalletStyle() {
    return TextStyle(
      color: AppColor.primaryTextColorLight,
      fontSize: 16,
      fontWeight: FontWeight.w700,
    );
  }

  TextStyle textTitleProductStyle() {
    return TextStyle(
      color: AppColor.primaryTextColorLight,
      fontSize: 12,
      fontWeight: FontWeight.w600,
    );
  }

  TextStyle textTitleContactStyle() {
    return TextStyle(
      color: AppColor.eightTextColorLight,
      fontSize: 14,
      fontWeight: FontWeight.w600,
    );
  }

  TextStyle textButtonEditFormtStyle() {
    return TextStyle(
      color: AppColor.buttonOnchangeFormColor,
      fontSize: 12,
      fontWeight: FontWeight.w400,
    );
  }

  TextStyle textLableFormtStyle() {
    return TextStyle(
      color: AppColor.primaryHintColorLight,
      fontSize: 12,
      fontWeight: FontWeight.w400,
    );
  }

  TextStyle textFooterStyle() {
    return TextStyle(
      color: AppColor.primaryHintColorLight,
      fontSize: 14,
      fontWeight: FontWeight.w400,
    );
  }

  TextStyle textdescriptionStyle() {
    return TextStyle(
      color: AppColor.primaryTextColorLight,
      fontSize: 12,
      fontWeight: FontWeight.w400,
    );
  }

  TextStyle textCheckStyle() {
    return TextStyle(
      color: AppColor.primaryTextColorLight,
      fontSize: 10,
      fontWeight: FontWeight.w400,
    );
  }

  TextStyle textOrderCodeStyle() {
    return TextStyle(
      color: AppColor.primaryTextColorLight,
      fontSize: 14,
      fontWeight: FontWeight.w700,
    );
  }

  TextStyle textAddressStyle() {
    return TextStyle(
      color: AppColor.primaryHintColorLight,
      fontSize: 12,
      fontWeight: FontWeight.w600,
    );
  }

  // histỏy
  TextStyle textTitleHistoryStyle() {
    return TextStyle(
      color: AppColor.primaryTextColorLight,
      fontSize: 24,
      fontWeight: FontWeight.w700,
    );
  }

  TextStyle textTitleExpantedStyle() {
    return TextStyle(
      color: AppColor.primaryTextColorLight,
      fontSize: 14,
      fontWeight: FontWeight.w400,
    );
  }

  TextStyle textTitleMedicalStyle() {
    return TextStyle(
      color: AppColor.primaryTextColorLight,
      fontSize: 14,
      fontWeight: FontWeight.w700,
    );
  }

  TextStyle textButtonStyle() {
    return TextStyle(
      color: AppColor.primaryHintColorLight,
      fontSize: 14,
      fontWeight: FontWeight.w600,
    );
  }

  TextStyle textCardInfoStyle() {
    return TextStyle(
      color: AppColor.tileOrangeColor,
      fontSize: 10,
      fontWeight: FontWeight.w300,
    );
  }

  TextStyle textImageGalleryStyle() {
    return TextStyle(
      color: AppColor.secondBackgroundColorLight,
      fontSize: 30,
      fontWeight: FontWeight.w500,
    );
  }

  TextStyle textInfoMedicalStyle() {
    return TextStyle(
      color: AppColor.eightTextColorLight,
      fontSize: 12,
      fontWeight: FontWeight.w400,
    );
  }

  TextStyle textRestPasswordStyle() {
    return TextStyle(
        color: AppColor.primaryTextColorLight,
        fontSize: 18,
        fontWeight: FontWeight.w700,
        fontFamily: 'Pass through');
  }

  TextStyle textStyleNoteLoginStyle() {
    return TextStyle(
      color: AppColor.eightTextColorLight,
      fontSize: 14,
      fontWeight: FontWeight.w400,
      decoration: TextDecoration.underline,
    );
  }

  // onboarding
  TextStyle textTitleOnboardingStyle() {
    return TextStyle(
        color: AppColor.primaryTextColorLight,
        fontSize: 18,
        fontWeight: FontWeight.w700,
        fontFamily: 'Pass through');
  }

  TextStyle textContentOnboardingStyle() {
    return TextStyle(
        color: AppColor.fifthTextColorLight,
        fontSize: 14,
        fontWeight: FontWeight.w400,
        fontFamily: 'Pass through');
  }

  // onbrading
  TextStyle textDescriptionStyle() {
    return TextStyle(
        color: AppColor.primaryTextColorLight,
        fontSize: 20,
        fontWeight: FontWeight.w700,
        fontFamily: 'Pass through');
  }

  TextStyle texttitleStyle() {
    return TextStyle(
        color: AppColor.secondTextColorLight,
        fontSize: 16,
        fontWeight: FontWeight.w400,
        fontFamily: 'Pass through');
  }

  TextStyle textNextStyle() {
    return TextStyle(
        color: AppColor.secondTextColorLight,
        fontSize: 16,
        fontWeight: FontWeight.w600,
        fontFamily: 'Pass through');
  }

  TextStyle textSkipStyle() {
    return TextStyle(
        color: AppColor.primaryTextColorLight,
        fontSize: 16,
        fontWeight: FontWeight.w600,
        fontFamily: 'Pass through');
  }
  TextStyle textAuthorBookStyle() {
    return TextStyle(
        color: AppColor.fifthTextColorLight,
        fontSize: 16,
        fontWeight: FontWeight.w400,
        fontFamily: 'Pass through');
  }
}
