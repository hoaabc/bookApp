import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

import '../../../resource/assets_constant/icon_constants.dart';
import '../../../shared/bottom_navigation/bottom_bar_item.dart';
import '../../../shared/constants/colors.dart';
import '../../../shared/styles/text_style/text_style.dart';
import '../../favorite/view/favorite_screen.dart';
import '../../home/view/home_screen.dart';
import '../../profile/view/profile_screen.dart';
import '../../top_view/view/top_view_screen.dart';

class DashBoardScreen extends StatefulWidget {
  DashBoardScreen({Key? key}) : super(key: key);

  @override
  _DashBoardScreenState createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen>
    with SingleTickerProviderStateMixin {
  late List<Widget> _screens;
  int indexSelect = 0;
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _screens = [
      HomeScreen(),
      FavoriteScreen(),
      ProfileScreen(),
      TopViewScreen(),
    ];
    _tabController = TabController(vsync: this, length: _screens.length);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        child: TabBarView(
          controller: _tabController,
          physics: const NeverScrollableScrollPhysics(),
          children: _screens,
        ),
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  Widget _buildBottomNavigationBar() {
    return BottomNavigationBar(
      onTap: (index) {
        _tabController!.animateTo(
          index,
          duration: const Duration(milliseconds: 200),
          curve: Curves.easeOut,
        );
        setState(() {
          indexSelect = index;
        });
        
      },
      currentIndex: indexSelect,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      selectedItemColor: AppColor.eightTextColorLight,
      type: BottomNavigationBarType.fixed,
      backgroundColor: AppColor.secondBackgroundColorLight,
      selectedLabelStyle: TextAppStyle().textBottomBarActiveStyle(),
      unselectedLabelStyle: TextAppStyle().textBottomBarUnActiveStyle(),
      elevation: 0,
      items: [
        BottomBarItemWidget(
          icon: IconConstants.iconHomeUnActive,
          activeIcon: IconConstants.iconHomeActive,
          label: 'Trang ch???'.tr,
        ),
        BottomBarItemWidget(
          
          icon: IconConstants.iconHistoryUnActive,
          activeIcon: IconConstants.iconHistoryActive,
          label: 'y??u th??ch'.tr,
        ),
        BottomBarItemWidget(
          icon: IconConstants.iconAccountUnActive,
          activeIcon: IconConstants.iconAccountActive,
          label: 'T??i kho???n'.tr,
        ),
          BottomBarItemWidget(
          icon: IconConstants.icTopUnActive,
          activeIcon: IconConstants.icTopActive,
          label: 'Top View'.tr,
        ),
      ],
    );
  }
}



