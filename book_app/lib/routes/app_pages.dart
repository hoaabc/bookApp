import 'package:book_app/modules/detail/binding/detail_binding.dart';
import 'package:book_app/modules/detail/view/detail_screen.dart';
import 'package:get/get.dart';

import '../modules/auth/binding/auth_binding.dart';
import '../modules/auth/view/auth_login.dart';
import '../modules/home/binding/home_binding.dart';
import '../modules/home/view/home_screen.dart';

part 'app_routes.dart';

final routePages = [
  GetPage(
      name: Routes.LOGIN,
      page: () => AuthuLoginScreen(),
      binding: AuthBinding()),
  GetPage(name: Routes.HOME, page: () => HomeScreen(), binding: HomeBinding()),
  GetPage(
      name: Routes.DETAIL,
      page: () => DetailScreen(),
      binding: DetailBinding()),
];
