import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../models/home_model/book_home_model.dart';
import '../../../shared/bottom_navigation/view/bottom_navigation_screen.dart';
import '../../../shared/styles/text_style/text_style.dart';
import '../../../shared/widgets/carousel/carousel_widget.dart';
import '../../../shared/widgets/reading_card_list/reading_card_list.dart';
import '../controller/home_controller.dart';

part 'home_screen.childern.dart';

class HomeScreen extends GetView<HomeController> {
  HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BottomNavigationCustom(
        // ignore: sort_child_properties_last
        child: Container(
          child: Column(
            children: [
              const SizedBox(height: 30),
              Obx(
                () => controller.apiSlider.value?.data != null
                    ? CarouselWidget(
                        aspectRatio: 2.3,
                        showIndicator: true,
                        borderRadius: 8,
                        items: controller.apiSlider.value?.data ?? [],
                      )
                    : Container(),
              ),
              Expanded(
                child: SingleChildScrollView(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Text('Các truyện mới',
                          style: TextAppStyle().textDescriptionStyle()),
                    ),
                    const SizedBox(height: 12),
                    Obx(
                      () => controller.apiBookHome.value?.data != null
                          ? Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              width: Get.width,
                              child: _genListBookItem(
                                  lstBookItem:
                                      controller.apiBookHome.value?.data ?? []),
                            )
                          : Container(),
                    )
                    // : Container(
                    //     child: Center(
                    //       child: Text('Loading data',
                    //           style:
                    //               TextAppStyle().textTitleContactStyle()),
                    //     ),
                    //   ),
                  ],
                )),
              ),
            ],
          ),
        ),
        indexSelect: 0,
      ),
    );
  }
}
