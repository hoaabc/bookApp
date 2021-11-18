import 'package:get/get.dart';

import '../../../api/api_provider.dart';
import '../../../api/api_repository.dart';
import '../../../models/home_model/book_home_model.dart';
import '../../../models/response/author_model/author_model.dart';
import '../../../models/response/slider_model/slider_model.dart';

class HomeController extends GetxController {
  Rx<GetDataAuthor?> authorInfo = Rx<GetDataAuthor?>(null);
  Rx<ListSlider?> apiSlider = Rx<ListSlider?>(null);
  Rx<BookList?> apiBookHome = Rx<BookList?>(null);
  final ApiRepository apiRepository = ApiRepository(apiProvider: ApiProvider());
  @override
  Future<void> onInit() async {
    super.onInit();
    await loadAuthor();
    await loadSlider();
    await loadBookHome();
  }

  Future<void> loadAuthor() async {
    final _authorInfo = await apiRepository.getDataAuthors();
    authorInfo.value = _authorInfo;
  }

  Future<void> loadSlider() async {
    final _apiSlider = await apiRepository.getDataSlider();
    apiSlider.value = _apiSlider;
  }

  Future<void> loadBookHome() async {
    final _apiBookHome = await apiRepository.getDataAllBookHome();
    apiBookHome.value = _apiBookHome;
  }

  List<SliderData> getListSliderImage() {
    return apiSlider.value?.data ?? [];
  }

  // get List boook
  List<BookDetail> getListBook() {
    return apiBookHome.value?.data ?? [];
  }
}
