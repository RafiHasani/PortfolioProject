import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/app_config.dart';
import '../../../controllers/home_screen_controller.dart';

class MySkillsDialogWidgetSwift extends StatelessWidget {
  final HomeController homeController;
  const MySkillsDialogWidgetSwift({
    super.key,
    required this.homeController,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 0.5.sh,
        width: AppConfig().getDeviceScreenType(context) == 0 ? 0.7.sw : 0.8.sw,
        padding: EdgeInsets.all(16.r),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          color: const Color.fromARGB(250, 255, 255, 255),
        ),
        child: Padding(
          padding: EdgeInsets.all(8.r),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Veroke',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 6.sp,
                  decoration: TextDecoration.none,
                ),
              ),
              24.verticalSpace,
              Text(
                '''I started working as junior software deverloper in March 2021 with Veroke. I was developing mobile application for iOS platform. ''',
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 4.sp,
                  height: 1.3.h,
                  decoration: TextDecoration.none,
                ),
                textAlign: TextAlign.center,
              ),
              8.verticalSpace,
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.orange,
                          size: 8.r,
                        ),
                        4.horizontalSpace,
                        Text(
                          'UI : Figma design to Storyboard',
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 4.sp,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ],
                    ),
                    8.verticalSpace,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.orange,
                          size: 16.r,
                        ),
                        4.horizontalSpace,
                        Text(
                          'Deisgn Patter : MVC, MVVM',
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 4.sp,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ],
                    ),
                    8.verticalSpace,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.orange,
                          size: 8.r,
                        ),
                        4.horizontalSpace,
                        Text(
                          'API : Rest api implementation',
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 4.sp,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ],
                    ),
                    8.verticalSpace,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.orange,
                          size: 8.r,
                        ),
                        4.horizontalSpace,
                        Text(
                          'Tools : Xcode',
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 4.sp,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ],
                    ),
                    8.verticalSpace,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.orange,
                          size: 8.r,
                        ),
                        4.horizontalSpace,
                        Text(
                          '#Projects : ThriftPlan, ArtStation, SpaStation',
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 4.sp,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ],
                    ),
                    8.verticalSpace,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.payments,
                          size: 7.r,
                          color: Colors.orange,
                        ),
                        4.horizontalSpace,
                        Expanded(
                          child: Text(
                            'Payment Getway Integration : Payfort,Tabby payment system',
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 4.sp,
                              decoration: TextDecoration.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
