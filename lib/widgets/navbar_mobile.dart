// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../controllers/home_screen_controller.dart';

class NavBarMobileWidget extends StatelessWidget {
  final Function(BuildContext context) menuCallback;
  final HomeController homeController;
  const NavBarMobileWidget({
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
          horizontal: 42.w,
          vertical: 16.h,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              children: [
                Text(
                  "Mohammad Rafi.",
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            IconButton(
              splashColor: Colors.transparent,
              onPressed: () {
                menuCallback(context);
              },
              icon: Icon(
                Icons.menu,
                size: 16.h,
                color: homeController.themeMode == ThemeMode.dark
                    ? Get.theme.primaryColorDark
                    : Get.theme.primaryColorLight,
              ),
            )
          ],
        ),
      ),
    );
  }
}
