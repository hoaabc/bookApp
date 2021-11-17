
import 'package:flutter/material.dart';

import '../../constants/colors.dart';

Widget inputInformationButton({
  Color color = const Color(0xffF8C400),
  required VoidCallback onButtonPressed,
  required String titleButton,
  Color colorText = const Color(0xFFFFFFFF),
}) {
  return MaterialButton(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
    onPressed: onButtonPressed,
    elevation: 0,
    disabledColor: AppColor.disabledButtonColorLight,
    minWidth: double.infinity,
    color: color,
    child: Center(
      child: Text(
        titleButton,
        style: TextStyle(
          color: colorText,
          fontSize: 16,
          height: 1.2,
          fontWeight: FontWeight.w500,
        ),
      ),
    ),
  );
}