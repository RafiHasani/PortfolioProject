import 'package:countup/countup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolioproject/controllers/home_screen_controller.dart';
import 'package:portfolioproject/widgets/aboutme_card_view_mobile.dart';

class AboutMeMobilePageView extends StatelessWidget {
  const AboutMeMobilePageView({
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
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "About Me!",
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            4.verticalSpace,
            Text(
              "A Look Into My Background!",
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
        24.verticalSpace,
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    16.verticalSpace,
                    Text(
                      "Hello there!",
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    8.verticalSpace,
                    Text(
                      '''Hello, my name is Mohammad Rafi. I am a mobile application developer with 2 years of experience. I have successfully completed 7 projects, including iOS native applications and hybrid applications developed using Flutter. I specialize in creating user-friendly and visually appealing mobile applications that provide a seamless user experience. With my expertise in iOS development and Flutter, I am confident in my ability to contribute to any mobile app development project. I am constantly learning and staying updated with the latest trends and technologies in the mobile app development industry. I am excited to bring my skills and experience to new challenges and contribute to the success of future projects.''',
                      style: TextStyle(
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w500,
                        color: homeController.themeMode == ThemeMode.light
                            ? Colors.black45
                            : Colors.white60,
                      ),
                    ),
                    16.verticalSpace,
                    Expanded(
                      child: ListView(
                        shrinkWrap: true,
                        children: [
                          AboutMeCardsMobileWidget(
                            icon: "assets/images/graduation_hat.png",
                            title: Text(
                              'Education',
                              style: TextStyle(
                                fontSize: 10.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            subTitle: Text(
                              'Bochlor\'s in Computer Science',
                              style: TextStyle(
                                fontSize: 8.sp,
                                fontWeight: FontWeight.w600,
                                color: Colors.black38,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            height: 0.15.sh,
                            width: 0.6.sw,
                          ),
                          8.verticalSpace,
                          AboutMeCardsMobileWidget(
                            icon: "assets/images/stack.png",
                            title: Text(
                              'Experience',
                              style: TextStyle(
                                fontSize: 10.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            subTitle: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Countup(
                                  begin: 0,
                                  end: 2,
                                  duration: const Duration(seconds: 2),
                                  style: TextStyle(
                                    fontSize: 8.sp,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black38,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                2.horizontalSpace,
                                Text(
                                  '+ Years',
                                  style: TextStyle(
                                    fontSize: 8.sp,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black38,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                            height: 0.15.sh,
                            width: 0.6.sw,
                          ),
                          8.verticalSpace,
                          AboutMeCardsMobileWidget(
                            icon: 'assets/images/flash_filled.png',
                            title: Text(
                              'Projects',
                              style: TextStyle(
                                fontSize: 10.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            subTitle: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Countup(
                                  begin: 0,
                                  end: 7,
                                  duration: const Duration(seconds: 2),
                                  style: TextStyle(
                                    fontSize: 8.sp,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black38,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                2.horizontalSpace,
                                Text(
                                  '+ Projects',
                                  style: TextStyle(
                                    fontSize: 8.sp,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black38,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                            height: 0.15.sh,
                            width: 0.6.sw,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
