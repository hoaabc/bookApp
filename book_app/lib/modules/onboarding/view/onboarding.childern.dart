part of 'onboarding_screen.dart';

extension _OnboardingChildern on OnboardingScreen {
  Widget onPressedNext() {
    return Text(
      'Tiếp theo',
      style: TextAppStyle().textNextStyle(),
    );
  }

  Widget onPressedDone() {
    return Text(
      'Done',
      style: TextAppStyle().textNextStyle(),
    );
  }

  Widget onPressedSkip() {
    return Text(
      'Bỏ qua',
      style: TextAppStyle().textSkipStyle(),
    );
  }
}
