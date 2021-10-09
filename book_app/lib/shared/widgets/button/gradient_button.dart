import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/colors.dart';

class AppGradientButton extends StatelessWidget {
  const AppGradientButton({
    required this.onPressed,
    required this.child,
    Key? key,
    this.borderRadius,
  }) : super(key: key);

  final Function()? onPressed;
  final Widget child;
  final BorderRadius? borderRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      constraints: const BoxConstraints(minHeight: 48),
      decoration: BoxDecoration(
        borderRadius: borderRadius ?? BorderRadius.circular(8),
        color: onPressed == null ? AppColor.primary.withOpacity(0.4) : null,
        gradient: onPressed != null
            ? const LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  AppColor.color45C152,
                  AppColor.color0ADC90,
                ],
              )
            : null,
      ),
      child: MaterialButton(
        padding: const EdgeInsets.symmetric(horizontal: 14),
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        shape: const StadiumBorder(),
        onPressed: onPressed,
        child: child,
      ),
    );
  }
}
