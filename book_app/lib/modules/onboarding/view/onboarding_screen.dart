import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../../../routes/app_pages.dart';
import '../../../shared/constants/colors.dart';
import '../../../shared/styles/text_style/text_style.dart';
import '../../../shared/widgets/image_widget/fcore_image.dart';
import '../controller/onboarding_controller.dart';

part 'onboarding.childern.dart';

class OnboardingScreen extends GetView<OnboardingController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          const SizedBox(
            height: 80,
          ),
          Expanded(
            child: IntroductionScreen(
              pages: [
                PageViewModel(
                    bodyWidget: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Center(
                          child: content(
                              content: controller.onboardingDescriptionFirst)),
                    ),
                    image: FCoreImage(controller.onboardingImageFirst,
                        fit: BoxFit.cover),
                    titleWidget: title(title: controller.onboardingTitleFirst)),
                PageViewModel(
                    bodyWidget: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Center(
                          child: content(
                              content: controller.onboardingDescriptionSecond)),
                    ),
                    image: FCoreImage(controller.onboardingImageSecond,
                        fit: BoxFit.cover),
                    titleWidget:
                        title(title: controller.onboardingTitleSecond)),
                PageViewModel(
                    bodyWidget: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Center(
                          child: content(
                              content: controller.onboardingDescriptionThird)),
                    ),
                    image: FCoreImage(controller.onboardingImageThird,
                        fit: BoxFit.cover),
                    titleWidget: title(title: controller.onboardingTitleThird)),
                PageViewModel(
                    bodyWidget: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Center(
                          child: content(
                              content: controller.onboardingDescriptionFourth)),
                    ),
                    image: FCoreImage(controller.onboardingImageFourth,
                        fit: BoxFit.cover),
                    titleWidget:
                        title(title: controller.onboardingTitleFourth)),
                PageViewModel(
                    bodyWidget: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Center(
                          child: content(
                              content: controller.onboardingDescriptionFifth)),
                    ),
                    image: FCoreImage(controller.onboardingImageFifth,
                        fit: BoxFit.cover),
                    titleWidget: title(title: controller.onboardingTitleFifth))
              ],
              dotsDecorator: DotsDecorator(
                  spacing: const EdgeInsets.all(5),
                  activeColor: AppColor.eightTextColorLight,
                  activeSize: const Size(45, 10),
                  size: const Size.square(10),
                  activeShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25))),
              onDone: () {
                Get.toNamed(Routes.DASHBOARD);
              },
              showSkipButton: true,
              showNextButton: true,
              nextFlex: 1,
              dotsFlex: 2,
              skipFlex: 1,
              animationDuration: 1000,
              curve: Curves.fastOutSlowIn,
              skip: onPressedSkip(),
              next: onPressedNext(),
              done: onPressedDone(),
            ),
          ),
        ],
      ),
    ));
  }
}
