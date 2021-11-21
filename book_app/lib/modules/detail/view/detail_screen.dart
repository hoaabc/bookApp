import 'package:book_app/modules/detail/view/reading_chapter_screen.dart';
import 'package:book_app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:readmore/readmore.dart';

import '../../../models/response/book_detail_model/book_detail_model.dart';
import '../../../resource/assets_constant/icon_constants.dart';
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
        top: true,
        child: Scaffold(
          body: Obx(
            () => controller.apiBookInfo.value != null
                ? DefaultTabController(
                    length: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 24,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: InkWell(
                              onTap: () {
                                Navigator.of(context).pop();
                              },
                              child: FCoreImage(IconConstants.icBackLogin,
                                  fit: BoxFit.contain)),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: _inforBook(
                              bookItem: controller.apiBookInfo.value),
                        ),
                        Container(
                          height: 50,
                          child: AppBar(
                            elevation: 0.0,
                            backgroundColor:
                                AppColor.primaryBackgroundColorLight,
                            bottom: TabBar(
                              unselectedLabelStyle:
                                  TextAppStyle().textTitleContactStyle(),
                              indicatorColor:
                                  AppColor.dividerColorLightBottomSheet,
                              tabs: [
                                Tab(
                                    child: Text('Chi tiết',
                                        style: TextAppStyle()
                                            .textTitleContactStyle())),
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
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 16),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        _readMoreDescription(
                                            description: controller.apiBookInfo
                                                    .value?.description ??
                                                '',
                                            rating_point: controller.apiBookInfo
                                                    .value?.ratingPoint ??
                                                0,
                                            status: controller.apiBookInfo.value
                                                    ?.status ??
                                                'Loading'),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 16),
                                child: _listChapters(),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                : Container(),
          ),
        ));
  }
}
