import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:portfolioproject/controllers/home_screen_controller.dart';
import 'package:portfolioproject/screens/web_view/views/myskills_flutter_widgetflutterdialog_web.dart';
import 'package:portfolioproject/screens/web_view/views/myskill_dialog_swiftdialog_web.dart';
import 'package:portfolioproject/widgets/profissionalexperience_card_view_mobile.dart';

class MySkillsMobilePageView extends StatelessWidget {
  final HomeController homeController;
  const MySkillsMobilePageView({
    super.key,
    required this.homeController,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Professional Experience",
          style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        8.verticalSpace,
        Text(
          "Experiences I have Acquired",
          style: TextStyle(
            fontSize: 10.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
        32.verticalSpace,
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ProfessionalExperienceCardMobile(
              icon: 'assets/images/swift.png',
              title: 'Swift (iOS)',
              subTitle: 'Veroke',
              homeController: homeController,
              viewMore: () {
                Get.dialog(
                  MySkillsDialogWidgetSwift(
                    homeController: homeController,
                  ),
                );
              },
            ),
            8.verticalSpace,
            ProfessionalExperienceCardMobile(
              icon: 'assets/images/flutter.png',
              title: 'Flutter',
              subTitle: 'Veroke',
              homeController: homeController,
              viewMore: () {
                Get.dialog(
                  MySkillsDialogFlutterWidget(
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
