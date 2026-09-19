import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:portfolioproject/screens/web_view/views/myskills_flutter_widgetflutterdialog_web.dart';
import 'package:portfolioproject/screens/web_view/views/myskill_dialog_swiftdialog_web.dart';
import 'package:portfolioproject/widgets/profissionalexperience_card_view_mobile.dart';

class MySkillsMobilePageView extends StatelessWidget {
  const MySkillsMobilePageView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Professional Experience', style: textTheme.headlineSmall),
        8.verticalSpace,
        Text('Experiences I have Acquired', style: textTheme.bodyMedium),
        32.verticalSpace,
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ProfessionalExperienceCardMobile(
              icon: 'assets/images/swift.png',
              title: 'Swift (iOS)',
              subTitle: 'Veroke',
              viewMore: () {
                Get.dialog(const MySkillsDialogWidgetSwift());
              },
            ),
            8.verticalSpace,
            ProfessionalExperienceCardMobile(
              icon: 'assets/images/flutter.png',
              title: 'Flutter',
              subTitle: 'Veroke',
              viewMore: () {
                Get.dialog(const MySkillsDialogFlutterWidget());
              },
            ),
          ],
        ),
      ],
    );
  }
}
