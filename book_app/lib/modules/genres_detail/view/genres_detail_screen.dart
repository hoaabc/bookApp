import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../resource/assets_constant/icon_constants.dart';
import '../../../shared/widgets/image_widget/fcore_image.dart';
import '../../../shared/widgets/reading_card_list/reading_card_list.dart';
import '../controller/genres_detail_controller.dart';

part 'genres_detail.childern.dart';

class GenresDetailScreen extends GetView<GenresDetailController> {
  GenresDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Scrollbar(
          child: SingleChildScrollView(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 16),
                InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: FCoreImage(IconConstants.icBackLogin,
                        fit: BoxFit.contain)),
                const SizedBox(height: 32),
                ReadingListCard(
                   
                    lstItems: controller.detailGenerApiData.value ?? [],
                    pressDetails: (index) {
                      //controller.onChangeSelected(index);
                    }),
              ],
            ),
          )),
        ),
      ),
    );
  }
}
