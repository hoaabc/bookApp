import 'package:book_app/shared/widgets/type_history_widget/type_history_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../models/home_model/home_models.dart';
import '../../../routes/app_pages.dart';
import '../../../shared/bottom_navigation/view/bottom_navigation_screen.dart';
import '../../../shared/styles/text_style/text_style.dart';
import '../../../shared/widgets/appbar/app_bar_widget.dart';
import '../../../shared/widgets/carousel/carousel_widget.dart';
import '../../../shared/widgets/image_widget/fcore_image.dart';
import '../controller/home_controller.dart';
part 'home_screen.childern.dart';

class HomeScreen extends GetView<HomeController> {
  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appbar(context, title: 'Home', isRequired: false),
        body: BottomNavigationCustom(
          // ignore: sort_child_properties_last
          child: Scrollbar(
            child: SingleChildScrollView(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 16),
                CarouselWidget(
                  aspectRatio: 1.75,
                  showIndicator: true,
                  borderRadius: 8,
                  items: controller.getListSliderImage(),
                ),
                const SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text('Truyện HOT',
                      style: TextAppStyle().textTitleContactStyle()),
                ),
                const SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: TypeHistory(lstItems: controller.getListHistory()),
                ),
                const SizedBox(height: 32),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text('Truyện ngôn tình',
                      style: TextAppStyle().textTitleContactStyle()),
                ),
                const SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: TypeHistory(lstItems: controller.getListHistory()),
                ),
                const SizedBox(height: 32),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text('Truyện tiên hiệp',
                      style: TextAppStyle().textTitleContactStyle()),
                ),
                const SizedBox(height: 16),
                TypeHistory(lstItems: controller.getListHistory(), type: false),
                const SizedBox(height: 32),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text('Truyện tranh',
                      style: TextAppStyle().textTitleContactStyle()),
                ),
                const SizedBox(height: 16),
                TypeHistory(lstItems: controller.getListHistory(), type: false),
                const SizedBox(height: 32),
              ],
            )),
          ),

          indexSelect: 0,
        ));
  }
}
