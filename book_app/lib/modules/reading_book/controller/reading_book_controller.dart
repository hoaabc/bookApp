import 'dart:async';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';

class ReadingBookController extends GetxController {
  Rx<String?> file = Rx<String?>(null);
  Rx<String?> urlFromFile = Rx<String?>(null);
  @override
  Future<void> onInit() async {
    super.onInit();
    urlFromFile.value = await Get.arguments;
    await loadPdf();
  }

  Future<File> getFileFromUrl(String urlFileNetwork) async {
    try {
      final url = urlFileNetwork;
      final filename = urlFileNetwork.substring(urlFileNetwork.lastIndexOf('/') + 1);
      final request = await HttpClient().getUrl(Uri.parse(url));
      final response = await request.close();
      final bytes = await consolidateHttpClientResponseBytes(response);
      final dir = await getApplicationDocumentsDirectory();
      final File file = File('${dir.path}/$filename');
      final File urlFile = await file.writeAsBytes(bytes);
      return urlFile;
    } catch (_e) {
      throw Exception('Error opening url file');
    }
  }

  Future<void> loadPdf() async {
    try {
      await getFileFromUrl(urlFromFile.value ?? '').then((f) {
        file.value = f.path;
      });
    } catch (_e) {
      throw Exception(_e);
    }
  }
}
