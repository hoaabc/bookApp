import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../../../resource/assets_constant/images_constants.dart';
import '../../../shared/constants/colors.dart';
import '../../../shared/styles/text_style/text_style.dart';
import '../../../shared/widgets/image_widget/fcore_image.dart';
import '../controller/detail_controller.dart';

part 'detail_screen_children.dart';
class DetailScreen extends GetView<DetailController> {
  DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            Container(),
            Container(
              height: 50,
              child: AppBar(
                elevation: 0.0,
                backgroundColor: AppColor.primaryBackgroundColorLight,
                bottom: TabBar(
                  unselectedLabelStyle: TextAppStyle().textTitleContactStyle(),
                  indicatorColor: AppColor.dividerColorLightBottomSheet,
                  tabs: [
                    Tab(
                        child: Text('Chi tiết',
                            style: TextAppStyle().textTitleContactStyle())),
                    Tab(
                        child: Text(
                      'Chapters',
                      style: TextAppStyle().textTitleContactStyle(),
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
                          children: [],
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
      ),
    ));
  }
}
