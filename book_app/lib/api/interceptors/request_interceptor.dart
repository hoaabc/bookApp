import 'dart:async';

import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/request/request.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../shared/constants/storage.dart';

FutureOr<Request> requestInterceptor(request) async {
  final storage = Get.find<SharedPreferences>();
  final token = storage.getString(StorageConstants.token);
  request.headers['Authorization'] = 'Bearer $token';

  await EasyLoading.show(status: 'loading...');
  return request;
}
