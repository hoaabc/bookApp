part of 'home_screen.dart';

extension _HomeChildernScreen on HomeScreen {
  Widget _item({required ItemModel item}) {
    return InkWell(
      child: Container(
          width: (Get.width - 64) / 3,
          height: (Get.width - 64) / 3 + 48,
          child: Column(
            children: [
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: FCoreImage(item.image,
                      height: (Get.width - 64) / 3, fit: BoxFit.fill),
                ),
              ),
              const SizedBox(height: 8),
              Text(item.title, style: TextAppStyle().textTitleHistoryStyle())
            ],
          )),
    );
  }

  Widget _listItemType(
      {required List<ItemModel> lstItems,  bool type = true}) {
    return type
        ? Wrap(
            runSpacing: 16,
            spacing: 16,
            children: List<Widget>.generate(
              lstItems.length,
              (index) {
                return _item(item: lstItems[index]);
              },
            ),
          )
        : Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List<Widget>.generate(
                  4,
                  (index) => Padding(
                      padding: const EdgeInsets.only(right: 16),
                      child: _item(item: lstItems[index])),
                ),
              ),
            ),
          );
  }
}
