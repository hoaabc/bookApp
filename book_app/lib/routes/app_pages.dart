import 'package:book_app/modules/genres_detail/binding/book_type_binding.dart';
import 'package:book_app/modules/genres_detail/view/genres_detail_screen.dart';
import 'package:book_app/modules/profile_orther/binding/profile_orther_binding.dart';
import 'package:book_app/modules/profile_orther/view/profile_orther_screen.dart';
import 'package:book_app/modules/reading_book/binding/reading_book_binding.dart';
import 'package:book_app/modules/reading_book/view/reading_book_screen.dart';
import 'package:get/get.dart';

import '../modules/auth/binding/auth_binding.dart';
import '../modules/auth/view/login_screen.dart';
import '../modules/dashboard/binding/dashboard_binding.dart';
import '../modules/dashboard/view/dashboard_screen.dart';
import '../modules/detail/binding/detail_binding.dart';
import '../modules/detail/view/detail_screen.dart';
import '../modules/favorite/binding/favorite_binding.dart';
import '../modules/favorite/view/favorite_screen.dart';
import '../modules/home/binding/home_binding.dart';
import '../modules/home/view/home_screen.dart';
import '../modules/onboarding/binding/onboarding_binding.dart';
import '../modules/onboarding/view/onboarding_screen.dart';
import '../modules/profile/binding/profile_binding.dart';
import '../modules/profile/view/profile_screen.dart';

part 'app_routes.dart';

final routePages = [
  GetPage(
    name: Routes.AUTH,
    page: () => LoginScreen(),
    binding: AuthBinding(),
  ),
  GetPage(
      name: Routes.BOOK_TYPE,
      page: () => GenresDetailScreen(),
      binding: GenresDetailBinding()),
  GetPage(name: Routes.HOME, page: () => HomeScreen(), binding: HomeBinding()),
  GetPage(
    name: Routes.DETAIL,
    page: () => DetailScreen(),
    binding: DetailBinding(),
  ),
  GetPage(
      name: Routes.FAVOURITE,
      page: () => FavoriteScreen(),
      binding: FavoriteBinding()),
  GetPage(
      name: Routes.PROFILE,
      page: () => ProfileScreen(),
      binding: ProfileBinding()),
  GetPage(
      name: Routes.ONBOARDING_SCREEN,
      page: () => OnboardingScreen(),
      binding: OnboardingBinding()),
  GetPage(name: Routes.DASHBOARD, page: () => DashBoardScreen(), bindings: [
    DashboardBinding(),
    HomeBinding(),
    DetailBinding(),
    ProfileBinding(),
    FavoriteBinding()
  ]),
  GetPage(
      name: Routes.READING_BOOK,
      page: () => ReadingChapter(),
      binding: ReadingBookBinding()),
  GetPage(
      name: Routes.ORTHER_USER,
      page: () => ProfileOrtherScreen(),
      binding: ProfileOrtherBinding()),
];
