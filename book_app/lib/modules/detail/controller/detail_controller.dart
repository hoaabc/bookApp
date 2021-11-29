import 'dart:async';

import 'package:book_app/models/request/comment_request.dart';
import 'package:book_app/shared/utils/product_form_ultilies.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

import '../../../api/api_repository.dart';
import '../../../models/response/detail_book_ui_models/detail_book_model.dart';

class DetailController extends GetxController with ProductForm {
  final ApiRepository apiRepository;
  Rx<DetailBookUIModel?> apiBookInfo = Rx<DetailBookUIModel?>(null);
  final GlobalKey<FormState> commentFormKey = GlobalKey<FormState>();
  RxString commentPost = RxString('');
  RxBool result = false.obs;
  Future<void> setComment(String text) async {
    commentPost.value = text;
  }

  final commentController = TextEditingController();
  RxInt indexSelected = 0.obs;
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
      print("Error");
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
      print(result.value);
      await loadBookInfo();
    } catch (_e) {
      // print(apiLoginData.value?.accessToken);
      ScaffoldMessenger.of(Get.context!).showSnackBar(const SnackBar(
        content: Text('Tài khoản hoặc mật khẩu không chính xác'),
      ));
    } finally {
      await EasyLoading.dismiss();
    }
  }
}
