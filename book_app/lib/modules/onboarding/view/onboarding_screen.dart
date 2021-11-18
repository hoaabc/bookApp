import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../../../resource/assets_constant/images_constants.dart';
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
      top: false,
      child: Column(
        children: [
          Expanded(
            child: IntroductionScreen(
              rawPages: [
                Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(ImageConstants.onboarding_first),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 32),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: FCoreImage(controller.iconOnboardingImageFirst,
                              height: Get.height * 0.7, fit: BoxFit.cover),
                        ),
                      ),
                      const SizedBox(height: 12),
                      Center(
                        child: Text(controller.onboardingTitleFirst,
                            textAlign: TextAlign.center,
                            style: TextAppStyle().texttitleStyle()),
                      ),
                      const SizedBox(height: 4),
                      Center(
                        child: Text(controller.onboardingDescriptionFirst,
                            textAlign: TextAlign.center,
                            style: TextAppStyle().textDescriptionStyle()),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(ImageConstants.onboarding_second),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 32),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: FCoreImage(
                              controller.iconOnboardingImageSecond,
                              height: Get.height * 0.7,
                              fit: BoxFit.cover),
                        ),
                      ),
                      const SizedBox(height: 12),
                      Center(
                        child: Text(controller.onboardingTitleSecond,
                            textAlign: TextAlign.center,
                            style: TextAppStyle().texttitleStyle()),
                      ),
                      const SizedBox(height: 4),
                      Center(
                        child: Text(controller.onboardingDescriptionSecond,
                            textAlign: TextAlign.center,
                            style: TextAppStyle().textDescriptionStyle()),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(ImageConstants.onboarding_third),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 32),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: FCoreImage(controller.iconOnboardingImageThird,
                              height: Get.height * 0.7, fit: BoxFit.cover),
                        ),
                      ),
                      const SizedBox(height: 12),
                      Center(
                        child: Text(controller.onboardingTitleThird,
                            textAlign: TextAlign.center,
                            style: TextAppStyle().texttitleStyle()),
                      ),
                      const SizedBox(height: 4),
                      Center(
                        child: Text(controller.onboardingDescriptionThird,
                            textAlign: TextAlign.center,
                            style: TextAppStyle().textDescriptionStyle()),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(ImageConstants.onboarding_fourth),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 32),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: FCoreImage(
                              controller.iconOnboardingImageFourth,
                              height: Get.height * 0.7,
                              fit: BoxFit.cover),
                        ),
                      ),
                      const SizedBox(height: 12),
                      Center(
                        child: Text(controller.onboardingTitleFourth,
                            textAlign: TextAlign.center,
                            style: TextAppStyle().texttitleStyle()),
                      ),
                      const SizedBox(height: 4),
                      Center(
                        child: Text(controller.onboardingDescriptionFourth,
                            textAlign: TextAlign.center,
                            style: TextAppStyle().textDescriptionStyle()),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(ImageConstants.onboarding_first),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 32),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: FCoreImage(controller.iconOnboardingImageFifth,
                              height: Get.height * 0.7, fit: BoxFit.cover),
                        ),
                      ),
                      const SizedBox(height: 12),
                      Center(
                        child: Text(controller.onboardingTitleFifth,
                            textAlign: TextAlign.center,
                            style: TextAppStyle().texttitleStyle()),
                      ),
                      const SizedBox(height: 4),
                      Center(
                        child: Text(controller.onboardingDescriptionFifth,
                            textAlign: TextAlign.center,
                            style: TextAppStyle().textDescriptionStyle()),
                      ),
                    ],
                  ),
                ),
              ],
              dotsDecorator: DotsDecorator(
                  color: AppColor.secondTextColorLight,
                  spacing: const EdgeInsets.all(5),
                  activeColor: AppColor.secondTextColorLight,
                  activeSize: const Size(45, 10),
                  size: const Size.square(10),
                  activeShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25))),
              onDone: () {
                Get.toNamed(Routes.HOME);
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
