import 'package:book_app/resource/assets_constant/images_constants.dart';
import 'package:get/get.dart';
class AboutController extends GetxController{
    List<String> getListSliderImage() {
    final lstSlider = <String>[];
    final test = ImageConstants.imageSlider;
    for (int i = 0; i < 5; i++) {
      lstSlider.add(test);
    }
    return lstSlider;
  }

}
