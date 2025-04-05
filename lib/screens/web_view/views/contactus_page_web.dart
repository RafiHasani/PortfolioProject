import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolioproject/widgets/contactus_card_widget.dart';

import '../../../controllers/home_screen_controller.dart';

class ContactDetailsPageView extends StatelessWidget {
  final HomeController homeController;
  const ContactDetailsPageView({
    required this.homeController,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          "Contact Details",
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        4.verticalSpace,
        Text(
          "Ways to get in touch with me",
          style: TextStyle(
            fontSize: 7.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
        32.verticalSpace,
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Talk to me",
                    style: TextStyle(
                      fontSize: 6.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  16.verticalSpace,
                  ContactTalkCardWidget(
                    icon: Icon(
                      Icons.email_outlined,
                      size: 18.r,
                      color: Colors.orange.shade500,
                    ),
                    title: 'Email',
                    subtitle: 'rafihasani2010@gmail.com',
                    showAction: false,
                    actionTitle: 'Write Me',
                  ),
                  8.verticalSpace,
                  ContactTalkCardWidget(
                    icon: Image.asset(
                      'assets/images/whatsapp.png',
                      height: 18.r,
                      width: 18.r,
                      color: Colors.orange.shade500,
                    ),
                    title: 'WhatsApp',
                    subtitle: '+93 707085670',
                    showAction: false,
                  ),
                ],
              ),
              24.horizontalSpace,
              SizedBox(
                width: 0.3.sw,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Write email",
                      style: TextStyle(
                        fontSize: 6.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    16.verticalSpace,
                    TextField(
                      style: TextStyle(fontSize: 6.sp),
                      decoration: InputDecoration(
                        isDense: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16.r),
                        ),
                        hintText: 'Write your name',
                        labelText: 'Name',
                        hintStyle: TextStyle(
                          fontSize: 6.sp,
                          color: homeController.themeMode == ThemeMode.light
                              ? Colors.black54
                              : Colors.white60,
                        ),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                      ),
                    ),
                    16.verticalSpace,
                    TextField(
                      style: TextStyle(fontSize: 6.sp),
                      decoration: InputDecoration(
                          isDense: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16.r),
                          ),
                          hintText: 'Write your email',
                          labelText: 'Mail',
                          hintStyle: TextStyle(
                            fontSize: 6.sp,
                            color: homeController.themeMode == ThemeMode.light
                                ? Colors.black54
                                : Colors.white60,
                          ),
                          floatingLabelBehavior: FloatingLabelBehavior.always),
                    ),
                    16.verticalSpace,
                    Expanded(
                      child: TextField(
                        style: TextStyle(fontSize: 6.sp),
                        textAlignVertical: TextAlignVertical.top,
                        decoration: InputDecoration(
                          isDense: false,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16.r),
                          ),
                          hintText: 'What is on your mind!',
                          hintStyle: TextStyle(
                            fontSize: 6.sp,
                            color: homeController.themeMode == ThemeMode.light
                                ? Colors.black54
                                : Colors.white60,
                          ),
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
                          vertical: 8.h,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Text(
                              "Send Message",
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
              )
            ],
          ),
        ),
      ],
    );
  }
}
