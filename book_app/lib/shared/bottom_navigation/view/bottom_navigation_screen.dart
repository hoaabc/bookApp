import 'package:book_app/modules/about/view/about_screen.dart';
import 'package:book_app/modules/home/view/home_screen.dart';
import 'package:book_app/resource/assets_constant/icon_constants.dart';
import 'package:book_app/shared/constants/colors.dart';
import 'package:book_app/shared/widgets/image_widget/fcore_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/bottom_navigation_controller.dart';

class BottomNavigationCustom extends GetView<BottomNavigationController> {
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        body: SafeArea(
          child: IndexedStack(
            index: controller.tabIndex.value,
            children: [
              HomeScreen(),
              AboutLoginScreen(),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: controller.changeTabIndex,
          currentIndex: controller.tabIndex.value,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          elevation: 0,
          items: [
            _bottomNavigationBarItem(
              iconImage: IconConstants.iconHome,
              label: 'Home',
            ),
            _bottomNavigationBarItem(
              iconImage: IconConstants.iconTypeBook,
              label: 'News',
            ),
            _bottomNavigationBarItem(
              iconImage: IconConstants.iconFavorite,
              label: 'Alerts',
            ),
            _bottomNavigationBarItem(
              iconImage: IconConstants.iconInfo,
              label: 'Account',
            ),
          ],
        ),
      ),
    );
  }
}

BottomNavigationBarItem _bottomNavigationBarItem(
    {required String iconImage, required String label}) {
  return BottomNavigationBarItem(
    backgroundColor: AppColor.eightTextColorLight,
    activeIcon: FCoreImage(
      iconImage,
      color: AppColor.eightTextColorLight,
      fit: BoxFit.contain,
    ),
    icon: FCoreImage(iconImage),
    label: label,
  );
}
