import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:portfolioproject/controllers/home_screen_controller.dart';
import 'package:portfolioproject/screens/web_view/views/myskill_dialog_swiftdialog_web.dart';
import 'package:portfolioproject/widgets/myskills_card_widget.dart';

import 'myskills_flutter_widgetflutterdialog_web.dart';

class MySkillPageView extends StatelessWidget {
  final HomeController homeController;

  const MySkillPageView({
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
          "My Skills",
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        4.verticalSpace,
        Text(
          "A Glance of My Skills",
          style: TextStyle(
            fontSize: 7.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
        32.verticalSpace,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MyskillsCard(
              icon: 'assets/images/swift.png',
              title: 'Swift (iOS)',
              subTitle: 'Veroke',
              viewMore: () {
                Get.dialog(
                  MySkillsDialogWidgetSwift(
                    homeController: homeController,
                  ),
                );
              },
            ),
            8.horizontalSpace,
            MyskillsCard(
              icon: 'assets/images/flutter.png',
              title: 'Flutter',
              subTitle: 'Veroke',
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
