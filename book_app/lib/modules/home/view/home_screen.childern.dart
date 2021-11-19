part of 'home_screen.dart';

extension _OnboardingChildern on HomeScreen {
  Widget _genListBookItem({required List<BookDetail> lstBookItem}) {
    return Wrap(
        spacing: 16,
        runSpacing: 16,
        children: List<Widget>.generate(lstBookItem.length, (index) {
          return ReadingListCard(
            items: lstBookItem[index],
            pressDetails: () {
              print("Press");
            },
          );
        }));
  }
}
