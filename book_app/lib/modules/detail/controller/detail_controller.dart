import 'dart:async';

import 'package:book_app/models/request/favorite_request.dart';
import 'package:book_app/models/request/rating_request.dart';
import 'package:book_app/models/response/rating_result_model_ui/rating_result_model_ui.dart';
import 'package:book_app/shared/constants/storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../api/api_repository.dart';
import '../../../models/request/comment_request.dart';
import '../../../models/response/detail_book_ui_models/detail_book_model.dart';
import '../../../routes/app_pages.dart';
import '../../../shared/utils/product_form_ultilies.dart';

class DetailController extends GetxController with ProductForm {
  final ApiRepository apiRepository;
  Rx<DetailBookUIModel?> apiBookInfo = Rx<DetailBookUIModel?>(null);
  Rx<RatingBookUIModel?> apiBookRating = Rx<RatingBookUIModel?>(null);
  final GlobalKey<FormState> commentFormKey = GlobalKey<FormState>();
  RxString commentPost = RxString('');
  RxBool result = false.obs;
  RxInt rating = 0.obs;
  Future<void> setComment(String text) async {
    commentPost.value = text;
  }

  final commentController = TextEditingController();
  RxInt indexSelected = 0.obs;
  RxInt indexUser = 0.obs;
  DetailController(this.apiRepository);
  @override
  Future<void> onInit() async {
    super.onInit();
    indexSelected = await Get.arguments;
    await loadData();
  }

  Future<void> loadData() async {
    await EasyLoading.show(status: 'Loading...');
    try {
      await loadBookInfo();
    } catch (_e) {
      throw Exception();
    } finally {
      await EasyLoading.dismiss();
    }
  }

  Future<void> loadBookInfo() async {
    final _bookInfo = await apiRepository.getDataBookDetail(
        id: indexSelected.value.toString());
    apiBookInfo.value = _bookInfo;
    
  }

  Future<void> pushComment() async {
    try {
      if (commentFormKey.currentState!.validate()) {
        result.value = await apiRepository.postComment(CommentRequest(
              book_id: indexSelected.value,
              comment_content: commentPost.value,
            )) ??
            false;
      }
      await loadBookInfo();
    } catch (_e) {
      ScaffoldMessenger.of(Get.context!).showSnackBar(const SnackBar(
        content: Text('Tài khoản hoặc mật khẩu không chính xác'),
      ));
    } finally {
      await EasyLoading.dismiss();
    }
  }

  Future<void> onChangeSelected(int index) async {
    indexUser.value = index;
    await Get.toNamed(Routes.ORTHER_USER, arguments: indexUser);
  }

  Future<void> ratingBook(int ratingbook) async {
    rating.value = ratingbook;
  }

  Future<void> ratingPoint() async {
    try {
      apiBookRating.value = await apiRepository.postRatingpoint(
        RatingRequest(
          book_id: apiBookInfo.value?.id ?? 0,
          rating_point: rating.value,
        ),
      );
      if (apiBookRating.value?.success == true) {
        ScaffoldMessenger.of(Get.context!).showSnackBar(const SnackBar(
          content: Text('Đánh giá thành công'),
        ));
      } else {
        ScaffoldMessenger.of(Get.context!).showSnackBar(const SnackBar(
          content: Text('Đánh giá không thành công'),
        ));
      }
    } catch (_e) {
      throw Exception();
    } finally {
      await EasyLoading.dismiss();
    }
  }

  Future<void> favoriteBook() async {
    try {
      final data = await apiRepository.favoriteBook(
        FavoriteRequest(
          book_id: apiBookInfo.value?.id ?? 0,
        ),
      );
      if (data == 'success') {
        ScaffoldMessenger.of(Get.context!).showSnackBar(const SnackBar(
          content: Text('Thêm vào danh sách yêu thích thành công '),
        ));
        await loadData();
      } else {
        ScaffoldMessenger.of(Get.context!).showSnackBar(const SnackBar(
          content: Text('không thành công'),
        ));
      }
    } catch (_e) {
      throw Exception();
    } finally {
      await EasyLoading.dismiss();
    }
  }
}
