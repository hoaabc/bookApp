import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../models/response/book_item_ui_moel/ui_item.dart';
import '../../constants/colors.dart';
import '../image_widget/fcore_image.dart';

class ReadingListCard extends StatelessWidget {
  final List<UIItem> lstItems;
  final Function(int) pressDetails;
  final bool isRequired;

  const ReadingListCard({
    Key? key,
    required this.lstItems,
    required this.pressDetails,
    this.isRequired = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
        spacing: 16,
        runSpacing: 16,
        children: List<Widget>.generate(lstItems.length, (index) {
          return InkWell(
            onTap: () => pressDetails(lstItems[index].id ?? 0),
            child: Container(
                width: (Get.width - 48) / 2,
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(8)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: FCoreImage(
                          lstItems[index].bookImage ?? '',
                          height: 170,
                          fit: BoxFit.cover,
                        )),
                    const SizedBox(height: 8),
                    Text(lstItems[index].name ?? 'Literary Fiction',
                        textAlign: TextAlign.start,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: AppColor.kLightBlackColor,
                          fontWeight: FontWeight.bold,
                        )),
                    const SizedBox(height: 8),
                    isRequired
                        ? Text('View : ${lstItems[index].view_count ?? 0}',
                            textAlign: TextAlign.start,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: AppColor.kLightBlackColor,
                              fontWeight: FontWeight.bold,
                            ))
                        : const SizedBox.shrink(),
                  ],
                )),
          );
        }));
  }
}
