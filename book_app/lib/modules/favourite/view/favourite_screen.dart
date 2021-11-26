import 'package:book_app/models/response/book_detail_model/book_detail_model.dart';
import 'package:book_app/models/response/favorite_models/favorite_model.dart';
import 'package:book_app/models/response/home_model/book_home_model.dart';
import 'package:book_app/modules/detail/view/reading_chapter_screen.dart';
import 'package:book_app/modules/favourite/controller/favourite_controller.dart';

import 'package:book_app/resource/assets_constant/icon_constants.dart';
import 'package:book_app/resource/assets_constant/images_constants.dart';
import 'package:book_app/shared/constants/colors.dart';
import 'package:book_app/shared/styles/text_style/text_style.dart';
import 'package:book_app/shared/widgets/appbar/app_bar_widget.dart';
import 'package:book_app/shared/widgets/image_widget/fcore_image.dart';
import 'package:book_app/shared/widgets/reading_card_list/reading_card_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:readmore/readmore.dart';

part 'favourite_screen_children.dart';

class FavouriteScreen extends GetView<FavouriteController> {
  FavouriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            Text('Yêu thích', style: TextAppStyle().textDescriptionStyle()),
            const SizedBox(
              height: 15,
            ),
            Expanded(
              child: Container(
                child: _getListBookItemHistory(
                    lstFavouriteBook: controller.getListHistory()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
