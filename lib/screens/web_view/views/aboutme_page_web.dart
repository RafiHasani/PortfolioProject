import 'package:countup/countup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../controllers/home_screen_controller.dart';
import '../../../widgets/aboutme_card_widget.dart';

class AboutMePageView extends StatelessWidget {
  final HomeController homeController;
  const AboutMePageView({
    super.key,
    required this.homeController,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "About Me!",
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            4.verticalSpace,
            Text(
              "A Look Into My Background!",
              style: TextStyle(
                fontSize: 7.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
        24.verticalSpace,
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Hello there!",
                  style: TextStyle(
                    fontSize: 8.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                4.verticalSpace,
                SingleChildScrollView(
                  child: SizedBox(
                    width: 0.40.sw,
                    child: Text(
                      '''Hello, my name is Mohammad Rafi. I am a mobile application developer with 2 years of experience. I have successfully completed 7 projects, including iOS native applications and hybrid applications developed using Flutter. I specialize in creating user-friendly and visually appealing mobile applications that provide a seamless user experience. With my expertise in iOS development and Flutter, I am confident in my ability to contribute to any mobile app development project. I am constantly learning and staying updated with the latest trends and technologies in the mobile app development industry. I am excited to bring my skills and experience to new challenges and contribute to the success of future projects.''',
                      style: TextStyle(
                        fontWeight: FontWeight.w200,
                        color: homeController.themeMode == ThemeMode.light
                            ? Colors.black45
                            : Colors.white60,
                      ),
                      overflow: TextOverflow.visible,
                    ),
                  ),
                ),
                16.verticalSpace,
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Say Hello",
                    style: TextStyle(
                      fontSize: 6.sp,
                    ),
                  ),
                ),
              ],
            ),
            8.horizontalSpace,
            Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      AboutMeCardsWidget(
                        icon: "assets/images/graduation_hat.png",
                        title: Container(),
                        subTitle: Text(
                          'BS Computer Science',
                          style: TextStyle(
                            fontSize: 4.sp,
                            fontWeight: FontWeight.w600,
                            color: Colors.black38,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      4.verticalSpace,
                      AboutMeCardsWidget(
                        icon: "assets/images/stack.png",
                        title: Container(),
                        subTitle: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Countup(
                              begin: 0,
                              end: 2,
                              duration: const Duration(seconds: 2),
                              style: TextStyle(
                                fontSize: 4.sp,
                                fontWeight: FontWeight.w600,
                                color: Colors.black38,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            2.horizontalSpace,
                            Text(
                              '+ Years',
                              style: TextStyle(
                                fontSize: 4.sp,
                                fontWeight: FontWeight.w600,
                                color: Colors.black38,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                      4.verticalSpace,
                      AboutMeCardsWidget(
                        icon: 'assets/images/flash_filled.png',
                        title: Container(),
                        subTitle: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Countup(
                              begin: 0,
                              end: 7,
                              duration: const Duration(seconds: 2),
                              style: TextStyle(
                                fontSize: 4.sp,
                                fontWeight: FontWeight.w600,
                                color: Colors.black38,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            2.horizontalSpace,
                            Text(
                              '+ Projects',
                              style: TextStyle(
                                fontSize: 4.sp,
                                fontWeight: FontWeight.w600,
                                color: Colors.black38,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  28.verticalSpace,
                ],
          
            ),
          ],
        ),
      ],
    );
  }
}
