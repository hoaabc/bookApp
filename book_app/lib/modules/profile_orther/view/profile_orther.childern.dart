part of 'profile_orther_screen.dart';

extension _OnboardingChildern on ProfileOrtherScreen {
  Widget _viewProfile({required ProfileOrtherUIModel? profile}) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _inforDetail(
              items: 'User name', value: profile!.username ?? 'Hoa nguyen van'),
          const SizedBox(height: 16),
          _inforDetail(
              items: 'Full name', value: profile.fullName ?? 'Hoa nguyen'),
          const SizedBox(height: 16),
          _inforDetail(items: 'Email', value: profile.email ?? 'hoa@gmail.com'),
          const SizedBox(height: 16),
          _inforDetail(items: 'Phone', value: profile.phone ?? '012345678'),
          const SizedBox(height: 16),
        ],
      ),
    );
  }

  Widget _inforDetail({required String items, required String value}) {
    return Container(
      width: Get.width,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppColor.sixTextColorLight.withOpacity(0.1),
      ),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(items,
                textAlign: TextAlign.left,
                style: TextAppStyle().textFullNameStyle()),
            const SizedBox(height: 4),
            Text(value,
                textAlign: TextAlign.left,
                style: TextAppStyle().textPhoneNumberStyle()),
          ]),
    );
  }
}
