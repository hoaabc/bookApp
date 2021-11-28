import 'package:get/get.dart';

import '../controller/reading_book_controller.dart';



class ReadingBookBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ReadingBookController>(
        () => ReadingBookController());
  }
}
