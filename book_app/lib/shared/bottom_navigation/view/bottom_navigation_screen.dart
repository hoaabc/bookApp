import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../resource/assets_constant/icon_constants.dart';
import '../../../routes/app_pages.dart';
import '../../constants/colors.dart';
import '../../widgets/image_widget/fcore_image.dart';

class BottomNavigationCustom extends StatelessWidget {
  final Widget child;
  final int indexSelect;

  BottomNavigationCustom({required this.child, required this.indexSelect});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: child),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          switch (index) {
            case 0:
              Get.toNamed(Routes.HOME);
              break;
            case 1:
              Get.toNamed(Routes.DETAIL);
              break;
            case 2:
              Get.toNamed(Routes.FAVOURITE);
              break;
            case 3:
              Get.toNamed(Routes.PROFILE);
              break;
          }
        },
        currentIndex: indexSelect,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.amber[800],
        elevation: 0,
        items: [
          _bottomNavigationBarItem(
            iconImage: indexSelect == 0
                ? IconConstants.iconHomeActive
                : IconConstants.CameraIcon,
            label: 'Home',
          ),
          _bottomNavigationBarItem(
            iconImage: IconConstants.CameraIcon,
            label: 'type',
          ),
          _bottomNavigationBarItem(
            iconImage: IconConstants.CameraIcon,
            label: 'detail',
          ),
          _bottomNavigationBarItem(
            iconImage: IconConstants.CameraIcon,
            label: 'Account',
          ),
        ],
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
