import 'package:get/get.dart';
import '../modules/auth/binding/auth_binding.dart';
import '../modules/auth/view/auth_login.dart';
part 'app_routes.dart';

final routePages = [
  GetPage(
      name: Routes.LOGIN,
      page: () => AuthuLoginScreen(),
      binding: AuthBinding())
];
