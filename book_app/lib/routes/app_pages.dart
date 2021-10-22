import 'package:book_app/modules/about/binding/about_binding.dart';
import 'package:book_app/modules/about/view/about_screen.dart';
import 'package:book_app/shared/bottom_navigation/binding/bottom_navigation_binding.dart';
import 'package:book_app/shared/bottom_navigation/view/bottom_navigation_screen.dart';
import 'package:get/get.dart';

import '../modules/auth/binding/auth_binding.dart';
import '../modules/auth/view/auth_login.dart';
import '../modules/home/binding/home_binding.dart';
import '../modules/home/view/home_screen.dart';

part 'app_routes.dart';

final routePages = [
  GetPage(
      name: Routes.LOGIN,
      page: () => AboutLoginScreen(),
      binding: AboutBinding()),
  GetPage(
      name: Routes.DETAIL,
      page: () => AboutLoginScreen(),
      binding: AboutBinding()),
  GetPage(name: Routes.HOME, page: () => HomeScreen(), binding: HomeBinding()),
  GetPage(
      name: Routes.BOTTOMBAR,
      page: () => BottomNavigationCustom(),
      binding: BottomNavigationBinding()),
];
