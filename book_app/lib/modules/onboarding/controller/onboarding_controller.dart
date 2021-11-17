import 'package:book_app/resource/assets_constant/images_constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class OnboardingController extends GetxController {
  // content onboarding
  final String onboardingContent =
      'Đặt lại mật khẩu của bạn sẽ được gửi trong địa chỉ email đã đăng ký của bạn Đặt lại mật khẩu của bạn sẽ được gửi trong địa chỉ email đã đăng ký của bạn.';
  final String onboardingTitle = 'Quên mật khẩu';
  final String onboardingImageFirst = ImageConstants.onboarding_first;
  final String onboardingImageSecond = ImageConstants.onboarding_second;
  final String onboardingImageThird = ImageConstants.onboarding_third;
  final String onboardingImageFourth = ImageConstants.onboarding_fourth;
  final String onboardingImageFifth = ImageConstants.onboarding_fifth;
  //List<Image>
  // image center
  final String iconOnboardingImageFirst = ImageConstants.icon_onboarding_first;
  final String iconOnboardingImageSecond =
      ImageConstants.icon_onboarding_second;
  final String iconOnboardingImageThird = ImageConstants.icon_onboarding_third;
  final String iconOnboardingImageFourth =
      ImageConstants.icon_onboarding_fourth;
  final String iconOnboardingImageFifth = ImageConstants.icon_onboarding_fifth;

  // final title
  final String onboardingTitleFirst = 'Kiểm tra sức khỏe với công nghệ AI';
  final String onboardingTitleSecond = 'Gọi bác sĩ Online';
  final String onboardingTitleThird = 'Trợ lý đặt lịch khám tại bệnh viện';
  final String onboardingTitleFourth = 'Giao thuốc tận nhà';
  final String onboardingTitleFifth = 'Nhận ý kiến y tế thứ hai';
  // final description
  final String onboardingDescriptionFirst = 'Hàng đầu từ Israel';
  final String onboardingDescriptionSecond = 'Chỉ với 1 chạm';
  final String onboardingDescriptionThird = 'Không cần phải xếp hàng';
  final String onboardingDescriptionFourth = 'Up đơn - nhận thuốc!';
  final String onboardingDescriptionFifth =
      '300 bệnh viện toàn quốc \n và hàng ngàn bác sĩ';
}
