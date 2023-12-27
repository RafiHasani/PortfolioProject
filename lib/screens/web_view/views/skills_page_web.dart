import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../widgets/myskills_languagecard_widget.dart';
import '../../../widgets/myskills_platformcard_widget.dart';

class MySkillPageView extends StatelessWidget {
  const MySkillPageView({
    super.key,
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
            const MySkillFrontEndCard(),
            8.horizontalSpace,
            const MySkillProgramLanguageCard()
          ],
        )
      ],
    );
  }
}
