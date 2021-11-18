
import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class TwoSideRoundedButton extends StatelessWidget {
  final String text;
  final double? radious;
  final Function() press;
  const TwoSideRoundedButton({
   
   required this.text,
    this.radious = 29,
   required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:press,
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: AppColor.kBlackColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(radious!),
            bottomRight: Radius.circular(radious!),
          ),
        ),
        child: Text(
          text,
          style:const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
