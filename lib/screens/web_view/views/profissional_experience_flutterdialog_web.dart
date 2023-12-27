import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/app_config.dart';
import '../../../controllers/home_screen_controller.dart';

class ProfissionalExperienceDialogFlutterWidget extends StatelessWidget {
  final HomeController homeController;
  const ProfissionalExperienceDialogFlutterWidget({
    super.key,
    required this.homeController,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 0.5.sh,
        width: AppConfig().getDeviceScreenType(context) == 0 ? 0.5.sw : 0.8.sw,
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
                'Veroke Technology',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 4.sp,
                  decoration: TextDecoration.none,
                ),
              ),
              24.verticalSpace,
              Text(
                '''In September 2022 work as Flutter deverloper with Veroke. I was developing mobile application for both iOS & android platforms. ''',
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
                      children: [
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.orange,
                          size: 8.r,
                        ),
                        4.horizontalSpace,
                        Text(
                          'UI : Figma design to Flutter UI',
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
                      children: [
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.orange,
                          size: 8.r,
                        ),
                        4.horizontalSpace,
                        Text(
                          'State Management : Getx, Bloc',
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
                      children: [
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.orange,
                          size: 8.r,
                        ),
                        4.horizontalSpace,
                        Text(
                          'Deisgn Patter : MVC',
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
                      children: [
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.orange,
                          size: 8.r,
                        ),
                        4.horizontalSpace,
                        Text(
                          'API : REST & SOAp api implementation',
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
                      children: [
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.orange,
                          size: 8.r,
                        ),
                        4.horizontalSpace,
                        Text(
                          'Tools : VSCode',
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
                      children: [
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.orange,
                          size: 8.r,
                        ),
                        4.horizontalSpace,
                        Text(
                          '#Projects : American Express KSA , Majoor ',
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 4.sp,
                            decoration: TextDecoration.none,
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
