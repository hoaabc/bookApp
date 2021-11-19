import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../models/home_model/book_home_model.dart';
import '../../../resource/assets_constant/images_constants.dart';
import '../../constants/colors.dart';
import '../button/two_side_rounded_button.dart';
import '../image_widget/fcore_image.dart';

class ReadingListCard extends StatelessWidget {
  final BookDetail items;
  final Function() pressDetails;

  const ReadingListCard({
    Key? key,
    required this.items,
    required this.pressDetails,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 245,
      width: (Get.width - 48) / 2,
      child: Stack(
        children: <Widget>[
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 221,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(29),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 10),
                    blurRadius: 33,
                    color: const Color(0xFFD3D3D3).withOpacity(.84),
                  ),
                ],
              ),
            ),
          ),
          FCoreImage(
            //item.bookImage ??
            ImageConstants.book_demo,
            width: 150,
          ),
          Positioned(
            top: 160,
            child: Container(
              height: 85,
              width: 202,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text(items.name ?? '',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: AppColor.kLightBlackColor,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text(items.description ?? 'Câu truyện vui nhộn',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: AppColor.kLightBlackColor,
                        )),
                  ),
                  const Spacer(),
                  TwoSideRoundedButton(text: 'Read', press: pressDetails)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
