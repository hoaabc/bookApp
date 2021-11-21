import 'package:book_app/modules/detail/view/reading_chapter_screen.dart';
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
import '../modules/type_history/binding/type_history_binding.dart';
import '../modules/type_history/view/type_history_screen.dart';

part 'app_routes.dart';

final routePages = [
  GetPage(
    name: Routes.AUTH,
    page: () => LoginScreen(),
    binding: AuthBinding(),
  ),
  GetPage(
      name: Routes.TYPEHISTORY,
      page: () => TypeHistoryScreen(),
      binding: TypeHistoryBinding()),
  GetPage(name: Routes.HOME, page: () => HomeScreen(), binding: HomeBinding()),
  GetPage(
      name: Routes.DETAIL,
      page: () => DetailScreen(),
      binding: DetailBinding(),
      children: [
        GetPage(
          name: Routes.VIEWPDF,
          page: () => const ReadingChapter(),
        ),
      ]),
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
];
