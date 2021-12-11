import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../widgets/image_widget/fcore_image.dart';

BottomNavigationBarItem BottomBarItemWidget(
    {required String icon, required String label, required String activeIcon}) {
  return BottomNavigationBarItem(
    activeIcon: FCoreImage(
      activeIcon,
      height: 24,
      width: 24,
      fit: BoxFit.cover,
    ),
    backgroundColor: AppColor.secondBackgroundColorLight,
    icon: FCoreImage(
      icon,
      height: 24,
      width: 24,
      fit: BoxFit.cover,
    ),
    label: label,
  );
}
