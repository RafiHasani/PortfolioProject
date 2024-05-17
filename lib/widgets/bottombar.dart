import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/app_config.dart';
import '../controllers/home_screen_controller.dart';

class BottomBarWidget extends StatelessWidget {
  final HomeController homeController;
  final Function(int index) bottomNavCallback;

  const BottomBarWidget({
    super.key,
    required this.homeController,
    required this.bottomNavCallback,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 2,
      color: homeController.themeMode == ThemeMode.light
          ? Colors.white
          : Colors.black,
      shadowColor: Colors.black45,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 42.w,
        ),
        color: homeController.themeMode == ThemeMode.light
            ? Colors.white
            : Colors.black,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Mohammad Rafi Hasani",
                  style: TextStyle(
                    fontSize: 8.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    bottomNavCallback(0);
                  },
                  child: Text(
                    "Home",
                    style: TextStyle(
                      fontSize: 4.sp,
                      color: homeController.themeMode == ThemeMode.light
                          ? Colors.black54
                          : Colors.white,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    bottomNavCallback(1);
                  },
                  child: Text(
                    "About Me",
                    style: TextStyle(
                      fontSize: 4.sp,
                      color: homeController.themeMode == ThemeMode.light
                          ? Colors.black54
                          : Colors.white,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    bottomNavCallback(2);
                  },
                  child: Text(
                    "Skills",
                    style: TextStyle(
                      fontSize: 4.sp,
                      color: homeController.themeMode == ThemeMode.light
                          ? Colors.black54
                          : Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    AppConfig().launch('https://github.com/RafiHasani');
                  },
                  icon: Image.asset(
                    'assets/images/github_logo.png',
                    color: Colors.blue,
                    height: 16.h,
                    width: 16.h,
                  ),
                ),
                24.verticalSpace,
                IconButton(
                  onPressed: () {
                    AppConfig().launch(
                        'https://www.linkedin.com/in/mrafi-hasani-2016/');
                  },
                  icon: Container(
                    padding: EdgeInsets.all(1.r),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.r),
                      color: Colors.blue,
                    ),
                    child: Image.asset(
                      "assets/images/linkedin.png",
                      height: 16.h,
                      width: 16.h,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
