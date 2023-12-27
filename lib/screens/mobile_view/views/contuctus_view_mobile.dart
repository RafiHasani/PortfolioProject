import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolioproject/controllers/home_screen_controller.dart';

class ContactDetailsMobilePageView extends StatelessWidget {
  const ContactDetailsMobilePageView({
    super.key,
    required this.homeController,
  });

  final HomeController homeController;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.zero,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Contact Details",
            style: TextStyle(
              fontSize: 24.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          4.verticalSpace,
          Text(
            "Ways to get in touch with me",
            style: TextStyle(
              fontSize: 10.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
          22.verticalSpace,
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  16.verticalSpace,
                  TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16.r),
                        ),
                        hintText: 'Write your name',
                        labelText: 'Name',
                        floatingLabelBehavior: FloatingLabelBehavior.always),
                  ),
                  16.verticalSpace,
                  TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16.r),
                        ),
                        hintText: 'Write your email',
                        labelText: 'Mail',
                        floatingLabelBehavior: FloatingLabelBehavior.always),
                  ),
                  16.verticalSpace,
                  SizedBox(
                    height: 140.h,
                    child: TextField(
                      textAlignVertical: TextAlignVertical.top,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16.r),
                        ),
                        hintText: 'What is on your mind!',
                        labelText: 'Message',
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                      ),
                      expands: true,
                      maxLines: null,
                    ),
                  ),
                  22.verticalSpace,
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      elevation: 4,
                    ),
                    onPressed: () {},
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 4.w,
                        vertical: 10.h,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Send Message",
                            style: TextStyle(
                              fontSize: 12.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          4.horizontalSpace,
                          Transform.rotate(
                            angle: -50 * pi / 180,
                            child: Padding(
                              padding: EdgeInsets.only(bottom: 8.h),
                              child: Icon(
                                Icons.send_rounded,
                                size: 15.r,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              24.verticalSpace,
              Icon(
                Icons.email_outlined,
                size: 18.r,
                color: Colors.orange.shade500,
              ),
              8.verticalSpace,
              Text(
                'rafihasani2010@gmail.com',
                style: TextStyle(
                  fontSize: 12.sp,
                  color: homeController.themeMode == ThemeMode.light
                      ? Colors.black
                      : Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
              16.verticalSpace,
              Image.asset(
                'assets/images/whatsapp.png',
                height: 18.h,
                width: 18.h,
                color: Colors.orange.shade500,
              ),
              8.verticalSpace,
              Text(
                '+93 707085670',
                style: TextStyle(
                    fontSize: 12.sp,
                    color: homeController.themeMode == ThemeMode.light
                        ? Colors.black
                        : Colors.white,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
          16.verticalSpace,
        ],
      ),
    );
  }
}
