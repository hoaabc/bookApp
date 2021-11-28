import 'package:get/get.dart';

import 'shared/service/storage_service.dart';

class DenpendencyInjection {
  static Future<void> init() async {
    await Get.putAsync(() => StorageService().init());
  }
}
