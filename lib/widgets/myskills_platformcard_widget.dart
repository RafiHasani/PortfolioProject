import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MySkillFrontEndCard extends StatelessWidget {
  const MySkillFrontEndCard({
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
                  'Frontend Deverloper',
                  style: TextStyle(
                    fontSize: 6.sp,
                    fontWeight: FontWeight.w800,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
                Column(
                  children: [
                    24.verticalSpace,
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/checkmark.png',
                          height: 20.h,
                          width: 20.w,
                          color: Colors.orange.shade500,
                        ),
                        Text(
                          'UIkit(Swift)',
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
                        Image.asset(
                          'assets/images/checkmark.png',
                          height: 20.h,
                          width: 20.w,
                          color: Colors.orange.shade500,
                        ),
                        Text(
                          'Flutter',
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
