import 'package:book_app/routes/app_pages.dart';
import 'package:book_app/shared/theme/theme_data.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';


class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeConfig.lightTheme,
      initialRoute:Routes.LOGIN,
      getPages:routePages,
    );
  }
}
