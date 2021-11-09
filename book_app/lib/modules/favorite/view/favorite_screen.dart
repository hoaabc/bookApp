import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../models/favorite_models/favorite_model.dart';
import '../../../shared/bottom_navigation/view/bottom_navigation_screen.dart';
import '../../../shared/constants/colors.dart';
import '../../../shared/styles/text_style/text_style.dart';
import '../../../shared/widgets/appbar/app_bar_widget.dart';
import '../../../shared/widgets/image_widget/fcore_image.dart';
import '../controller/favorite_controller.dart';

part 'favorite.children.dart';

class FavoriteScreen extends GetView<FavoriteController> {
  FavoriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: appbar(context, title: 'Yêu thích', isRequired: false),
          body: BottomNavigationCustom(
            // ignore: sort_child_properties_last
            child: Column(
              children: [
                Container(
                  height: 50,
                  child: AppBar(
                    elevation: 0.0,
                    backgroundColor: AppColor.primaryBackgroundColorLight,
                    bottom: TabBar(
                      unselectedLabelStyle: TextAppStyle().textTitleTypeStyle(),
                      indicatorColor: AppColor.dividerColorLightBottomSheet,

                      // ignore: prefer_const_literals_to_create_immutables
                      tabs: [
                        Tab(
                            child: Text('Lịch sử',
                                style: TextAppStyle().textTitleTypeStyle())),
                        Tab(
                            child: Text(
                          'Theo dõi',
                          style: TextAppStyle().textTitleTypeStyle(),
                        )),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      Scrollbar(
                        child: SingleChildScrollView(
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  height: 32,
                                ),
                                _tabdata(lstData: controller.getListHistory()),
                                const SizedBox(height: 32),
                                Text('Đề xuất liên quan',
                                    textAlign: TextAlign.left,
                                    style: TextAppStyle().textTitleTypeStyle()),
                                const SizedBox(height: 32),
                                _suggestData(
                                    lstData: controller.getListHistory())
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        // child: SingleChildScrollView(

                        //     //_tabMedicalHistory(context),
                        //     ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            indexSelect: 2,

            //onChange: (index) {}
          )),
    );
  }
}
