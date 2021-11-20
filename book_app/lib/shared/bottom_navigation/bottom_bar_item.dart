import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../widgets/image_widget/fcore_image.dart';

BottomNavigationBarItem BottomBarItemWidget(
    {required String icon, required String label, required String activeIcon}) {
  return BottomNavigationBarItem(
    activeIcon: FCoreImage(
      activeIcon,
      fit: BoxFit.contain,
    ),
    backgroundColor: AppColor.secondBackgroundColorLight,
    icon: FCoreImage(
      icon,
      fit: BoxFit.contain,
    ),
    label: label,
  );
}
