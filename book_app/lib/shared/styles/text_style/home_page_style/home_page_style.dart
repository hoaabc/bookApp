part of '../text_style.dart';

extension HomeScreenStyle on TextAppStyle {
  TextStyle textTitleTypeStyle() {
    return TextStyle(
      color: AppColor.primaryTextColorLight,
      fontSize: 17,
      fontWeight: FontWeight.w700,
    );
  }
    TextStyle textTitleHistoryStyle() {
    return TextStyle(
      color: AppColor.primaryTextColorLight,
      fontSize: 16,
      fontWeight: FontWeight.w400,
    );
  }
}
