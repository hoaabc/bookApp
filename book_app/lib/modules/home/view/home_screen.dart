import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../models/home_model/home_models.dart';
import '../../../shared/styles/text_style/text_style.dart';
import '../../../shared/widgets/appbar/app_bar_widget.dart';
import '../../../shared/widgets/carousel/carousel_widget.dart';
import '../../../shared/widgets/image_widget/fcore_image.dart';
import '../controller/home_controller.dart';

part 'home_screen.childern.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(context, title: 'Home'),
      body: Scrollbar(
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
                  style: TextAppStyle().textTitleTypeStyle()),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: _listItemType(lstItems: controller.getListHistory()),
            ),
            const SizedBox(height: 32),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text('Truyện ngôn tình',
                  style: TextAppStyle().textTitleTypeStyle()),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: _listItemType(lstItems: controller.getListHistory()),
            ),
            const SizedBox(height: 32),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text('Truyện tiên hiệp',
                  style: TextAppStyle().textTitleTypeStyle()),
            ),
            const SizedBox(height: 16),
            _listItemType(lstItems: controller.getListHistory(), type: false),
            const SizedBox(height: 32),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text('Truyện tranh',
                  style: TextAppStyle().textTitleTypeStyle()),
            ),
            const SizedBox(height: 16),
            _listItemType(lstItems: controller.getListHistory(), type: false),
            const SizedBox(height: 32),
          ],
        )),
      ),
    );
  }
}
