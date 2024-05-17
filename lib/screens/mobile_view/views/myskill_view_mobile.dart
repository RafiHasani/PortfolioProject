import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolioproject/widgets/myskill_frontend_view_mobile.dart';
import 'package:portfolioproject/widgets/myskill_programlanguage_view_mobile.dart';

class MySkillMobilePageView extends StatelessWidget {
  const MySkillMobilePageView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        24.verticalSpace,
        Text(
          "My Skills",
          style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        8.verticalSpace,
        Text(
          "A Glance of My Skills",
          style: TextStyle(
            fontSize: 12.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
        32.verticalSpace,
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const MySkillFrontEndCardMobile(),
            16.verticalSpace,
            const MySkillProgramLanguageCardMobile()
          ],
        )
      ],
    );
  }
}
