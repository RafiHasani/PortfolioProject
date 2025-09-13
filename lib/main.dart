import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:portfolioproject/constants/app_config.dart';
import 'package:portfolioproject/constants/theme.dart';

import 'controllers/home_screen_controller.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 720),
      minTextAdapt: true,
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          theme: lightTheme,
          darkTheme: darkTheme,
          initialBinding: BindingsBuilder(() {
            Get.put(
              HomeController(),
            );
          }),
          initialRoute: AppConfig.routeHomeScreenPage,
          getPages: AppConfig().routeMap,
        );
      },
    );
  }
}
