// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolioproject/controllers/home_screen_controller.dart';

class NavBarWidget extends StatelessWidget {
  final Function(int index) menuCallback;
  final HomeController homeController;
  const NavBarWidget({
    super.key,
    required this.menuCallback,
    required this.homeController,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 1,
      color: homeController.themeMode == ThemeMode.light
          ? Colors.white
          : Colors.black,
      shadowColor: Colors.black45,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 32.w,
          vertical: 8.h,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Mohammad Rafi.",
                  style: TextStyle(
                    fontSize: 8.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextButton(
                      onPressed: () {
                        menuCallback(0);
                      },
                      child: Text(
                        "Home",
                        style: TextStyle(
                          fontSize: 6.sp,
                          color: homeController.themeMode == ThemeMode.light
                              ? Colors.black54
                              : Colors.white,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        menuCallback(1);
                      },
                      child: Text(
                        "About Me",
                        style: TextStyle(
                          fontSize: 6.sp,
                          color: homeController.themeMode == ThemeMode.light
                              ? Colors.black54
                              : Colors.white,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        menuCallback(2);
                      },
                      child: Text(
                        "Skills",
                        style: TextStyle(
                          fontSize: 6.sp,
                          color: homeController.themeMode == ThemeMode.light
                              ? Colors.black54
                              : Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Switch(
                        trackColor: WidgetStateProperty.all(Colors.white30),
                        activeColor: Colors.green.withValues(alpha: 0.4),
                        activeThumbImage:
                            const AssetImage('assets/images/night.png'),
                        inactiveThumbImage:
                            const AssetImage('assets/images/light.png'),
                        value: homeController.themeMode == ThemeMode.light
                            ? false
                            : true,
                        inactiveTrackColor: Colors.white,
                        onChanged: (_) {
                          homeController.setThemeMode(
                            homeController.themeMode == ThemeMode.light
                                ? ThemeMode.dark
                                : ThemeMode.light,
                          );
                        }),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
