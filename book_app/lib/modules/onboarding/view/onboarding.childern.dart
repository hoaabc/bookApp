part of 'onboarding_screen.dart';

extension _OnboardingChildern on OnboardingScreen {
  Widget title({required String title}) {
    return Center(
      child: Text(
        title,
        textAlign: TextAlign.center,
        style: TextAppStyle().textTitleOnboardingStyle(),
      ),
    );
  }

  Widget content({required String content}) {
    return Center(
      child: Text(
        content,
        textAlign: TextAlign.center,
        style: TextAppStyle().textContentOnboardingStyle(),
      ),
    );
  }

  Widget onPressedNext() {
    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          border: Border.all(color: AppColor.eightTextColorLight, width: 2)),
      child: Center(
        child: Icon(
          Icons.navigate_next,
          size: 30,
          color: AppColor.eightTextColorLight,
        ),
      ),
    );
  }

  Widget onPressedDone() {
    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
          color: AppColor.eightTextColorLight,
          borderRadius: BorderRadius.circular(40),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade300,
                blurRadius: 40,
                offset: const Offset(4, 4))
          ]),
      child: Center(
        child: Text(
          'Done',
          style: TextAppStyle().textTitleInformationStyle(),
        ),
      ),
    );
  }

  Widget onPressedSkip() {
    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
          color:AppColor.eightTextColorLight,
          borderRadius: BorderRadius.circular(40),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade300,
                blurRadius: 10,
                offset: Offset(4, 4))
          ]),
      child: Center(
        child: Text(
          'Skip',
         style: TextAppStyle().textTitleInformationStyle(),
        ),
      ),
    );
  }
}
