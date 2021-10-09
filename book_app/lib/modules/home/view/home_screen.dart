import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../shared/widgets/appbar/app_bar_widget.dart';
import '../../../shared/widgets/carousel/carousel_widget.dart';
import '../controller/home_controller.dart';

part 'home_screen.childern.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(context, title: 'Home'),
      body: Container(
          margin: EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(
              child: Column(
            children: [
              const SizedBox(height: 16),
              CarouselWidget(
                aspectRatio: 1.75,
                showIndicator: true,
                borderRadius: 8,
                items: controller.getListSliderImage(),
              ),
              const SizedBox(height: 16),
              


            ],
          ))),
    );
  }
}
