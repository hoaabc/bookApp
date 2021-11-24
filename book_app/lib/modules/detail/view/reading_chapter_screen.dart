
import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:get/get.dart';

import '../../../resource/assets_constant/icon_constants.dart';
import '../../../shared/widgets/image_widget/fcore_image.dart';
import '../controller/detail_controller.dart';

class ReadingChapter extends GetView<DetailController> {
  // final File? file;
  const ReadingChapter();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Obx(
          () => controller.file.value != null
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 24,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: InkWell(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: FCoreImage(IconConstants.icBackLogin,
                              fit: BoxFit.contain)),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Expanded(
                      child: PDFView(
                        autoSpacing: false,
                        filePath: controller.file.value,
                      ),
                    ),
                  ],
                )
              : Container(),
        ),
      ),
    );
  }
}
