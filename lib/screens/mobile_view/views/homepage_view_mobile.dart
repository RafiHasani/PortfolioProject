import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolioproject/constants/app_config.dart';
import 'package:portfolioproject/controllers/home_screen_controller.dart';

class HomePageMobileView extends StatelessWidget {
  const HomePageMobileView({
    super.key,
    required this.homeController,
  });

  final HomeController homeController;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        24.verticalSpace,
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Mohammad Rafi \nHasani",
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.r),
                    child: Image.asset(
                      "assets/images/myphoto0.jpeg",
                      height: 0.3.sw,
                      width: 0.24.sw,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        16.verticalSpace,
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 16.h,
              height: 16.h,
              decoration: const BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.circle,
              ),
            ),
            8.horizontalSpace,
            Text(
              "Software Developer &\nMobile Application Developer",
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w600,
                color: homeController.themeMode == ThemeMode.light
                    ? Colors.black54
                    : Colors.white60,
              ),
            ),
          ],
        ),
        16.verticalSpace,
        SizedBox(
          child: Text(
            '''Thank you for visiting my portfolio! I am delighted to present my work as a professional mobile application developer. With a strong passion for creating apps that are intuitive and user-friendly, I have dedicated myself to developing innovative solutions that enhance and simplify everyday life. Through this portfolio, I aim to demonstrate the wide range of mobile applications I have created, each specifically designed to meet the unique needs and preferences of users. I am confident that my applications will captivate your interest.''',
            style: TextStyle(
              fontSize: 10.sp,
              fontWeight: FontWeight.w500,
              color: homeController.themeMode == ThemeMode.light
                  ? Colors.black45
                  : Colors.white60,
              height: 1.2.h,
            ),
          ),
        ),
        24.verticalSpace,
        Row(
          children: [
            Icon(
              Icons.share_location_sharp,
              color: homeController.themeMode == ThemeMode.light
                  ? Colors.black45
                  : Colors.white38,
            ),
            4.horizontalSpace,
            Text(
              "Kabul,",
              style: TextStyle(
                fontSize: 12.sp,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              " Afghanistan.",
              style: TextStyle(
                fontSize: 12.sp,
                color: homeController.themeMode == ThemeMode.light
                    ? Colors.black45
                    : Colors.white38,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        24.verticalSpace,
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.r),
            ),
            elevation: 4,
          ),
          onPressed: () {
            AppConfig().launch(AppConfig().resumeUrl);
          },
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 4.w,
              vertical: 10.h,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Resume",
                ),
                4.horizontalSpace,
                Icon(
                  Icons.download_for_offline_outlined,
                  size: 16.r,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
