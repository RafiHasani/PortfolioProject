import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../controllers/home_screen_controller.dart';
import '../../../widgets/profissional_experience_card_widget.dart';
import 'profissional_experience_flutterdialog_web.dart';
import 'profissional_experience_swiftdialog_web.dart';

class ProfessionalExperiencePageView extends StatelessWidget {
  final HomeController homeController;
  const ProfessionalExperiencePageView({
    super.key,
    required this.homeController,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "Professional Experience",
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        4.verticalSpace,
        Text(
          "Experiences I have Acquired",
          style: TextStyle(
            fontSize: 7.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
        32.verticalSpace,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ProfessionalExperienceCard(
              icon: 'assets/images/swift.png',
              title: 'Swift (iOS)',
              subTitle: 'Andpercent',
              viewMore: () {
                Get.dialog(
                  ProfissionalExperienceDialogWidgetSwift(
                    homeController: homeController,
                  ),
                );
              },
            ),
            8.horizontalSpace,
            ProfessionalExperienceCard(
              icon: 'assets/images/flutter.png',
              title: 'Flutter',
              subTitle: 'Veroke',
              viewMore: () {
                Get.dialog(
                  ProfissionalExperienceDialogFlutterWidget(
                    homeController: homeController,
                  ),
                );
              },
            ),
          ],
        ),
      ],
    );
  }
}
