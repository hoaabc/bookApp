import 'dart:async';

import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get_connect/http/src/request/request.dart';

import '../../shared/service/storage_service.dart';

FutureOr<Request> requestInterceptor(request) async {
   final token = StorageService.box.pull(StorageItems.accessToken);
  request.headers['Authorization'] = 'Bearer $token';

  await EasyLoading.show(status: 'loading...');
  return request;
}
