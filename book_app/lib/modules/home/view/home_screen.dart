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
        child: Obx(
          () => Scrollbar(
            child: Container(
              child: Column(
                children: [
                  controller.getListSliderImage().isNotEmpty
                      ? CarouselWidget(
                          aspectRatio: 1.75,
                          showIndicator: true,
                          borderRadius: 8,
                          items: controller.getListSliderImage(),
                        )
                      : Container(),
                  Expanded(
                    child: SingleChildScrollView(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 30),
                        controller.getListBook().isNotEmpty
                            ? Container(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 16),
                                width: Get.width,
                                child: _genListBookItem(
                                    lstBookItem: controller.getListBook()),
                              )
                            : Container(
                                child: Center(
                                  child: Text('Loading data',
                                      style: TextAppStyle()
                                          .textTitleContactStyle()),
                                ),
                              ),
                        const SizedBox(height: 40),
                      ],
                    )),
                  ),
                ],
              ),
            ),
          ),
        ),
        indexSelect: 0,
      ),
    );
  }
}
