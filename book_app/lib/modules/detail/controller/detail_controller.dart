import 'package:book_app/models/home_model/home_models.dart';
import 'package:book_app/resource/assets_constant/images_constants.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class DetailController extends GetxController
    with SingleGetTickerProviderMixin {
  late TabController _tabController;

  @override
  void onInit() {
    super.onInit();
    _tabController = TabController(vsync: this, length: 2);
  }
  // get _tabController => null;
}
// alo
