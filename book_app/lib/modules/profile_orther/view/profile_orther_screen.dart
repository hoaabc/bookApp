import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../models/response/profile_orther_model_ui/profile_orther_model_ui.dart';
import '../../../resource/assets_constant/icon_constants.dart';
import '../../../shared/constants/colors.dart';
import '../../../shared/styles/text_style/text_style.dart';
import '../../../shared/widgets/image_widget/fcore_image.dart';
import '../../../shared/widgets/loading/loading_data.dart';
import '../../../shared/widgets/profile_pic/profile_pic_widget.dart';
import '../../../shared/widgets/reading_card_list/reading_card_list.dart';
import '../controller/profile_orther_controller.dart';

part 'profile_orther.childern.dart';

class ProfileOrtherScreen extends GetView<ProfileOrtherController> {
  ProfileOrtherScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => controller.profileApiData.value != null
            ? SafeArea(
                child: DefaultTabController(
                  length: 2,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                            child: FCoreImage(IconConstants.icBackLogin,
                                fit: BoxFit.contain)),
                        ProfilePic(
                          onclick: () {},
                          fullName: 'Nguyen Van Hoa',
                          checkEditPhoneNumber: true,
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
                                    child: Text('Thông tin',
                                        style: TextAppStyle()
                                            .textTitleContactStyle())),
                                Tab(
                                    child: Text(
                                  'Sách yêu thích',
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const SizedBox(
                                          height: 12,
                                        ),
                                        _viewProfile(
                                            profile:
                                                controller.profileApiData.value)
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SingleChildScrollView(
                                child: ReadingListCard(
                                    lstItems: controller.profileApiData.value
                                            ?.favoriteBook ??
                                        [],
                                    pressDetails: (index) {}),
                              ),
                            ],
                          ),
                        )
                        //  : const LoadingIndicatorWidget(),
                        //),
                      ],
                    ),
                  ),
                ),
              )
            : const LoadingIndicatorWidget(),
      ),
    );
  }
}
