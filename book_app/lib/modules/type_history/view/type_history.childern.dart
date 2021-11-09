part of 'type_history_screen.dart';

extension _TypeHistoryChildern on TypeHistoryScreen {
  Widget _horizontalType(
      {required List<TypeModel> type, required Function() onClick}) {
    return Wrap(
        spacing: 12,
        runSpacing: 12,
        children: List<Widget>.generate(type.length, (index) {
          return InkWell(
            onTap: () => onClick(),
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
              ),
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FCoreImage(
                    type[index].image,
                    width: 30,
                    height: 40,
                    fit: BoxFit.fill,
                  ),
                  const SizedBox(
                    width: 7,
                  ),
                  Text(type[index].title,
                      style: TextAppStyle().textTitleExpantedStyle()),
                     
                
                ],
              ),
            ),
          );
        }));
  }
}

class TypeModel {
  final String image;
  final String title;
  TypeModel(this.image, this.title);
}
