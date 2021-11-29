// import 'package:book_app/models/response/home_model/book_home_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../models/response/genres_ui_model/genres_ui_model.dart';
import '../../../shared/constants/colors.dart';
import '../../../shared/styles/text_style/text_style.dart';
import '../../../shared/widgets/carousel/carousel_widget.dart';
import '../../../shared/widgets/image_widget/fcore_image.dart';
import '../../../shared/widgets/loading/loading_data.dart';
import '../../../shared/widgets/reading_card_list/reading_card_list.dart';
import '../controller/home_controller.dart';

part 'home_screen.childern.dart';

class HomeScreen extends GetView<HomeController> {
  HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Obx(
            () => controller.homeApiData.value != null
                ? Column(
                    children: [
                      const SizedBox(height: 30),
                      CarouselWidget(
                        aspectRatio: 2.2,
                        showIndicator: true,
                        borderRadius: 12,
                        items: controller.homeApiData.value?.slider ?? [],
                      ),
                      Expanded(
                        child: Scrollbar(
                          child: SingleChildScrollView(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 16),
                                child: Text('Thể loại',
                                    style:
                                        TextAppStyle().textDescriptionStyle()),
                              ),
                              _lstGenres(
                                  lstGenres:
                                      controller.homeApiData.value?.genres ??
                                          []),
                              Container(
                                  height: 1,
                                  width: Get.width,
                                  color: AppColor.dividerColorLightBottomSheet),
                              const SizedBox(height: 14),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 16),
                                child: Text('Các truyện mới',
                                    style:
                                        TextAppStyle().textDescriptionStyle()),
                              ),
                              const SizedBox(height: 12),
                              Container(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 16),
                                width: Get.width,
                                child: ReadingListCard(
                                    lstItems: controller
                                            .homeApiData.value?.latestBook ??
                                        [],
                                    pressDetails: (index) {
                                      controller.onChangeSelected(index);
                                    }),
                              ),
                              const SizedBox(height: 24),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 16),
                                child: Text('Truyện dài',
                                    style:
                                        TextAppStyle().textDescriptionStyle()),
                              ),
                              const SizedBox(height: 12),
                              Container(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 16),
                                width: Get.width,
                                child: ReadingListCard(
                                    lstItems: controller
                                            .homeApiData.value?.bookSeries ??
                                        [],
                                    pressDetails: (index) {
                                      controller.onChangeSelected(index);
                                    }),
                              ),
                              const SizedBox(height: 24),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 16),
                                child: Text('Truyện Được xem nhiều nhát',
                                    style:
                                        TextAppStyle().textDescriptionStyle()),
                              ),
                              const SizedBox(height: 12),
                              Container(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 16),
                                width: Get.width,
                                child: ReadingListCard(
                                    lstItems:
                                        controller.homeApiData.value?.topView ??
                                            [],
                                    pressDetails: (index) {
                                      controller.onChangeSelected(index);
                                    }),
                              ),
                              const SizedBox(height: 24),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 16),
                                child: Text('Truyện được yêu nhát',
                                    style:
                                        TextAppStyle().textDescriptionStyle()),
                              ),
                              const SizedBox(height: 12),
                              Container(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 16),
                                width: Get.width,
                                child: ReadingListCard(
                                  lstItems: controller
                                          .homeApiData.value?.mostFavorite ??
                                      [],
                                  pressDetails: (index) {
                                    controller.onChangeSelected(index);
                                  },
                                ),
                              ),
                            ],
                          )),
                        ),
                      ),
                    ],
                  )
                : const LoadingIndicatorWidget(),
          ),
        ),
      ),
    );
  }
}
