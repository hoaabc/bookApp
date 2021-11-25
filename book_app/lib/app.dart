import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

import 'app_binding.dart';
import 'routes/app_pages.dart';
import 'shared/theme/theme_data.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: AppBinding(),
      debugShowCheckedModeBanner: false,
      theme: ThemeConfig.lightTheme,
      initialRoute: Routes.AUTH,
      getPages: routePages,
      builder: EasyLoading.init(),
    );
  }
}
