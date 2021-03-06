import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:readmore/readmore.dart';

import '../../../models/response/detail_book_ui_models/detail_book_model.dart';
import '../../../models/response/genres_ui_model/genres_ui_model.dart';
import '../../../resource/assets_constant/icon_constants.dart';
import '../../../resource/assets_constant/images_constants.dart';
import '../../../routes/app_pages.dart';
import '../../../shared/constants/colors.dart';
import '../../../shared/styles/text_style/text_style.dart';
import '../../../shared/widgets/image_widget/fcore_image.dart';
import '../../../shared/widgets/show_bottom_sheet/show_bottom_sheet.dart';
import '../../../shared/widgets/text_input_login/text_input_login.dart';
import '../controller/detail_controller.dart';

part 'detail_screen_children.dart';

class DetailScreen extends GetView<DetailController> {
  DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Obx(
          () => controller.apiBookInfo.value != null
              ? DefaultTabController(
                  length: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
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
                      _inforBook(bookItem: controller.apiBookInfo.value),
                      Container(
                        height: 50,
                        child: AppBar(
                          elevation: 0.0,
                          backgroundColor: AppColor.primaryBackgroundColorLight,
                          bottom: TabBar(
                            unselectedLabelStyle:
                                TextAppStyle().textTitleContactStyle(),
                            indicatorColor:
                                AppColor.dividerColorLightBottomSheet,
                            tabs: [
                              Tab(
                                  child: Text('Chi ti???t',
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
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      _readMoreDescription(
                                        description: controller.apiBookInfo
                                                .value?.description ??
                                            '',
                                        rating_point: controller.apiBookInfo
                                                .value?.ratingPoint ??
                                            '',
                                        status: controller
                                                .apiBookInfo.value?.status ??
                                            'Loading',
                                      ),
                                      Container(
                                        height: 1,
                                        color: AppColor
                                            .dividerColorLightBottomSheet,
                                      ),
                                      const SizedBox(
                                        height: 12,
                                      ),
                                      _commentBook(
                                          lstComment: controller.apiBookInfo
                                                  .value?.comments ??
                                              [],
                                          onclick: (value) {
                                            controller.onChangeSelected(value);
                                          }),
                                      const SizedBox(
                                        height: 12,
                                      ),
                                      Form(
                                        key: controller.commentFormKey,
                                        child: Container(
                                          margin: const EdgeInsets.symmetric(
                                              horizontal: 16),
                                          child: TextInputLogin(
                                            isRequired: false,
                                            obscureText: false,
                                            onChanged: (value) {
                                              controller.setComment(value);
                                            },
                                            validator:
                                                controller.requiredValidator,
                                            suffixIcon: IconButton(
                                              onPressed: () {
                                                controller.pushComment();
                                              },
                                              // onPressed,
                                              icon: Icon(
                                                Icons.send_outlined,
                                                color:
                                                    AppColor.contractInfoColor,
                                              ),
                                            ),
                                            hint: 'input comment',
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 12,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(vertical: 16),
                              child: _listChapters(
                                  lstEpisode:
                                      controller.apiBookInfo.value?.episodes ??
                                          []),
                            ),
                          ],
                        ),
                      ),
                      _bottomBarDetail(
                          is_liked:
                              controller.apiBookInfo.value?.isLiked ?? false,
                          onChangeRating: () {
                            ShowBottomSheet().showBottomSheet(
                                context: context,
                                colors: Colors.white,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16),
                                  child: Column(children: [
                                    const SizedBox(height: 32),
                                    RatingBar.builder(
                                      onRatingUpdate: (rating) {
                                        controller.ratingBook(rating.toInt());
                                      },
                                      itemSize: 30,
                                      initialRating: 1,
                                      minRating: 1.0,
                                      direction: Axis.horizontal,
                                      allowHalfRating: false,
                                      itemCount: 5,
                                      itemBuilder: (context, _) => const Icon(
                                        Icons.star_sharp,
                                        color: Colors.amber,
                                      ),
                                    ),
                                    const SizedBox(height: 24),
                                    InkWell(
                                      onTap: () {
                                        controller.ratingPoint();

                                        Navigator.of(context).pop();
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: AppColor.contractInfoColor),
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 16, vertical: 12),
                                        child: Center(
                                            child: Text('G???i ????nh gi??',
                                                style: TextAppStyle()
                                                    .textNextStyle())),
                                      ),
                                    ),
                                    const SizedBox(height: 32)
                                  ]),
                                ));
                          },
                          favorite: () {
                            controller.favoriteBook();
                          },
                          lstEpisode:
                              controller.apiBookInfo.value?.episodes ?? [])
                      //Container(color: Colors.black, height: 100)
                    ],
                  ),
                )
              : Container(),
        ),
      ),
    );
  }
}
