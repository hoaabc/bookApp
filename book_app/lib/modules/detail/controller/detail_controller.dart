import 'dart:async';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';

import '../../../api/api_repository.dart';
import '../../../models/response/book_detail_model/book_detail_model.dart';

class DetailController extends GetxController {
  final ApiRepository apiRepository;
  Rx<BookDetailModel?> apiBookInfo = Rx<BookDetailModel?>(null);
  Rx<String?> file = Rx<String?>(null);

  DetailController(this.apiRepository);
  @override
  Future<void> onInit() async {
    super.onInit();
    await loadData();
    await loadPdf();
  }

  Future<void> loadData() async {
    await EasyLoading.show(status: 'Loading...');
    try {
      //await loadBookInfo();
    } catch (_e) {
      print("Error");
    } finally {
      await EasyLoading.dismiss();
    }
  }

  // Future<void> loadBookInfo() async {
  //   final _bookInfo = await apiRepository.getDataBookDetail(idBook: '8');
  //   apiBookInfo.value = _bookInfo;
  // }

  Future<File> createFileOfPdfUrl() async {
  
    final Completer<File> completer = Completer();
    try {
      final url = apiBookInfo.value?.contentUrl;
      final filename = url!.substring(url.lastIndexOf('/') + 1);
      final request = await HttpClient().getUrl(Uri.parse(url));
      final response = await request.close();
      final bytes = await consolidateHttpClientResponseBytes(response);
      final dir = await getApplicationDocumentsDirectory();
      final File file = File('${dir.path}/$filename');
      await file.writeAsBytes(bytes, flush: true);
      completer.complete(file);
    } catch (e) {
      throw Exception('Error parsing asset file!');
    }
    return completer.future;
  }

  Future<void> loadPdf() async {
    try {
      await createFileOfPdfUrl().then((f) {
        file.value = f.path;
      });
    } catch (_e) {
      print("Error");
    }
  }
}
