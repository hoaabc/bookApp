import 'package:book_app/shared/styles/text_style/text_style.dart';
import 'package:book_app/shared/widgets/appbar/app_bar_widget.dart';
import 'package:book_app/shared/widgets/carousel/carousel_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/about_controller.dart';

class AboutLoginScreen extends GetView<AboutController> {
  const AboutLoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(context, title: 'Home', isRequired: false),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16),

            const SizedBox(height: 16),
            // CarouselWidget(
            //   aspectRatio: 1.75,
            //   showIndicator: true,
            //   borderRadius: 8,
            //   items: controller.getListSliderImage(),
            // ),
            // Wrap(

            // )
          ],
        )),
      ),
    );
  }
}
