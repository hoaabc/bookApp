import 'dart:async';

import 'package:get/get.dart';
import 'package:get/get_connect/http/src/request/request.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../shared/constants/storage.dart';


FutureOr<Request> authInterceptor(request) async {
  final storage = Get.find<SharedPreferences>();
  final token = storage.getString(StorageConstants.token);
  request.headers['Authorization'] = 'Bearer $token';

  return request;
}
