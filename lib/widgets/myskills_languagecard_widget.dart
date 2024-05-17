import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MySkillProgramLanguageCard extends StatelessWidget {
  const MySkillProgramLanguageCard({
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
            height: 0.28.sh,
            width: 0.25.sw,
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
                  'Program Language',
                  style: TextStyle(
                    fontSize: 6.sp,
                    fontWeight: FontWeight.w800,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    24.verticalSpace,
                    Row(
                      children: [
                        4.horizontalSpace,
                        Image.asset(
                          'assets/images/programming_lang.png',
                          height: 20.h,
                          width: 20.h,
                          color: Colors.orange.shade500,
                        ),
                        4.horizontalSpace,
                        Text(
                          'Swift',
                          style: TextStyle(
                            fontSize: 5.sp,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    16.verticalSpace,
                    Row(
                      children: [
                        4.horizontalSpace,
                        Image.asset(
                          'assets/images/programming_lang.png',
                          height: 20.h,
                          width: 20.h,
                          color: Colors.orange.shade500,
                        ),
                        4.horizontalSpace,
                        Text(
                          'Dart',
                          style: TextStyle(
                            fontSize: 5.sp,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
