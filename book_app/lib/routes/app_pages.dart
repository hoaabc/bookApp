import 'package:book_app/modules/favorite/binding/favorite_binding.dart';
import 'package:book_app/modules/favorite/view/favorite_screen.dart';
import 'package:book_app/modules/profile/binding/profile_binding.dart';
import 'package:book_app/modules/profile/view/profile_screen.dart';
import 'package:get/get.dart';

import '../modules/auth/binding/auth_binding.dart';
import '../modules/auth/view/auth_login.dart';
import '../modules/detail/binding/detail_binding.dart';
import '../modules/detail/view/detail_screen.dart';
import '../modules/home/binding/home_binding.dart';
import '../modules/home/view/home_screen.dart';
import '../modules/type_history/binding/type_history_binding.dart';
import '../modules/type_history/view/type_history_screen.dart';

part 'app_routes.dart';

final routePages = [
  GetPage(
      name: Routes.LOGIN,
      page: () => AuthuLoginScreen(),
      binding: AuthBinding()),
  GetPage(
      name: Routes.TYPEHISTORY,
      page: () => TypeHistoryScreen(),
      binding: TypeHistoryBinding()),
  GetPage(name: Routes.HOME, page: () => HomeScreen(), binding: HomeBinding()),
  GetPage(
      name: Routes.DETAIL,
      page: () => DetailScreen(),
      binding: DetailBinding()),
  GetPage(
      name: Routes.FAVOURITE,
      page: () => FavoriteScreen(),
      binding: FavoriteBinding()),
  GetPage(
      name: Routes.PROFILE,
      page: () => ProfileScreen(),
      binding: ProfileBinding()),
];
