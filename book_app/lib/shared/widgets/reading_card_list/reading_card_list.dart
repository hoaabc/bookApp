import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../models/response/book_item_ui_moel/ui_item.dart';
import '../../constants/colors.dart';
import '../image_widget/fcore_image.dart';

class ReadingListCard extends StatelessWidget {
  final UIItem items;
  final Function() pressDetails;

  const ReadingListCard({
    Key? key,
    required this.items,
    required this.pressDetails,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: (Get.width - 48) / 2,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: FCoreImage(
                  items.bookImage ?? '',
                  height: 170,
                  width: 150,
                  fit: BoxFit.cover,
                )),
            const SizedBox(height: 8),
            Text(items.name ?? 'Literary Fiction',
                textAlign: TextAlign.start,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: AppColor.kLightBlackColor,
                  fontWeight: FontWeight.bold,
                )),
          ],
        ));
  }
}
