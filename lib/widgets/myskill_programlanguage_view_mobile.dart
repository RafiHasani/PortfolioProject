import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MySkillProgramLanguageCardMobile extends StatelessWidget {
  const MySkillProgramLanguageCardMobile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Material(
          elevation: 1,
          borderRadius: BorderRadius.circular(8.r),
          clipBehavior: Clip.antiAlias,
          child: Container(
            clipBehavior: Clip.antiAlias,
            height: 0.24.sh,
            width: 0.8.sw,
            padding: EdgeInsets.all(8.r),
            decoration: BoxDecoration(
              border: Border.all(
                width: 0.5,
                color: Colors.black12,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Programming Languages',
                  style: TextStyle(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w800,
                      color: Colors.black),
                  textAlign: TextAlign.center,
                ),
                Padding(
                  padding: EdgeInsets.all(16.r),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      24.verticalSpace,
                      Row(
                        children: [
                          Image.asset(
                            'assets/images/programming_lang.png',
                            height: 24.h,
                            width: 24.w,
                            color: Colors.orange.shade500,
                          ),
                          Text(
                            'Swift',
                            style: TextStyle(
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                          ),
                        ],
                      ),
                      16.verticalSpace,
                      Row(
                        children: [
                          Image.asset(
                            'assets/images/programming_lang.png',
                            height: 24.h,
                            width: 24.w,
                            color: Colors.orange.shade500,
                          ),
                          Text(
                            'Dart',
                            style: TextStyle(
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}