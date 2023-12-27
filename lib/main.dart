import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:portfolioproject/constants/app_config.dart';

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
      splitScreenMode: false,
      builder: (context, child) {
        return GetMaterialApp(
          debugShowMaterialGrid: false,
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            iconButtonTheme: IconButtonThemeData(
              style: IconButton.styleFrom(
                hoverColor: Colors.black12,
              ),
            ),
            textButtonTheme: TextButtonThemeData(
              style: IconButton.styleFrom(
                hoverColor: Colors.black12,
              ),
            ),
            elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.r),
                ),
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                textStyle: TextStyle(
                  fontSize: 6.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            inputDecorationTheme: InputDecorationTheme(
              labelStyle: const TextStyle(
                color: Colors.black87,
              ),
              hoverColor: Colors.transparent,
              hintStyle: TextStyle(
                fontSize: 10.sp,
                color: Colors.black54,
              ),
              outlineBorder: const BorderSide(
                color: Colors.black54,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16.r),
                borderSide: const BorderSide(
                  color: Colors.black54,
                ),
              ),
            ),
            scaffoldBackgroundColor: const Color.fromARGB(200, 255, 255, 255),
            primaryColor: AppConfig.color.primary,
            primaryColorLight: Colors.black,
            textTheme: Theme.of(context).textTheme.apply(
                  fontFamily: 'Montserrat',
                  bodyColor: Colors.black,
                  displayColor: Colors.black,
                  decorationColor: Colors.black,
                ),
          ),
          darkTheme: ThemeData(
            iconButtonTheme: IconButtonThemeData(
              style: IconButton.styleFrom(
                hoverColor: Colors.white12,
              ),
            ),
            textButtonTheme: TextButtonThemeData(
              style: IconButton.styleFrom(
                hoverColor: Colors.white24,
              ),
            ),
            elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.r),
                ),
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                textStyle: TextStyle(
                  fontSize: 6.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            inputDecorationTheme: InputDecorationTheme(
              labelStyle: const TextStyle(
                color: Colors.white70,
              ),
              hoverColor: Colors.white70,
              focusColor: Colors.white70,
              hintStyle: TextStyle(
                fontSize: 10.sp,
                color: Colors.white60,
              ),
              outlineBorder: const BorderSide(
                color: Colors.white70,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16.r),
                borderSide: const BorderSide(
                  color: Colors.white70,
                ),
              ),
            ),
            scaffoldBackgroundColor: const Color.fromARGB(200, 0, 0, 0),
            primaryColor: AppConfig.color.primary,
            primaryColorDark: Colors.white,
            textTheme: Theme.of(context).textTheme.apply(
                  bodyColor: Colors.white,
                  displayColor: Colors.white,
                  decorationColor: Colors.white,
                  fontFamily: 'Montserrat',
                ),
          ),
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
