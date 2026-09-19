import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:portfolioproject/controllers/home_screen_controller.dart';

class NavBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final Function(int index) menuCallback;
  final HomeController homeController;
  const NavBarWidget({
    super.key,
    required this.menuCallback,
    required this.homeController,
  });
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    return Material(
      elevation: 1,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 32.w, vertical: 8.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [Text("Mohammad Rafi.", style: textTheme.titleMedium)],
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
                      child: Text("Home", style: textTheme.labelLarge),
                    ),
                    TextButton(
                      onPressed: () {
                        menuCallback(1);
                      },
                      child: Text("About Me", style: textTheme.labelLarge),
                    ),
                    TextButton(
                      onPressed: () {
                        menuCallback(2);
                      },
                      child: Text("Skills", style: textTheme.labelLarge),
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Switch(
                      trackColor: WidgetStateProperty.all(Colors.white30),
                      activeThumbColor: Colors.green.withValues(alpha: 0.4),
                      activeThumbImage: const AssetImage(
                        'assets/images/night.png',
                      ),
                      inactiveThumbImage: const AssetImage(
                        'assets/images/light.png',
                      ),
                      value: Get.isDarkMode,
                      inactiveTrackColor: Colors.black,
                      activeTrackColor: Colors.white,
                      onChanged: (_) {
                        homeController.setThemeMode(
                          homeController.themeMode == .light ? .dark : .light,
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(0.1.sh);
}
