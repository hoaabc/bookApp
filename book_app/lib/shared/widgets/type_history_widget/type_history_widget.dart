import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../models/home_model/home_models.dart';
import '../../../routes/app_pages.dart';
import '../../styles/text_style/text_style.dart';
import '../image_widget/fcore_image.dart';

class TypeHistory extends StatelessWidget {
  final bool type;
  final List<ItemModel> lstItems;
  TypeHistory({Key? key, required this.lstItems, this.type = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return type
        ? Wrap(
            runSpacing: 10,
            spacing: 10,
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
                  lstItems.length,
                  (index) => Padding(
                      padding: const EdgeInsets.only(right: 16),
                      child: _item(item: lstItems[index])),
                ))),
          );
  }
}

Widget _item({required ItemModel item}) {
  return InkWell(
    onTap: () {
      Get.toNamed(Routes.TYPEHISTORY);
    },
    child: Container(
        width: (Get.width - 64) / 3,
        height: (Get.width - 64) / 3 + 24,
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
