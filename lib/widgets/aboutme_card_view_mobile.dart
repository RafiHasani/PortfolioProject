import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AboutMeCardsMobileWidget extends StatelessWidget {
  const AboutMeCardsMobileWidget({
    super.key,
    required this.icon,
    required this.title,
    required this.subTitle,
    this.height,
    this.width,
  });

  final double? height;
  final String icon;
  final Widget subTitle;
  final Widget title;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 1,
      borderRadius: BorderRadius.circular(8.r),
      clipBehavior: Clip.antiAlias,
      child: Container(
        clipBehavior: Clip.antiAlias,
        height: height ?? 0.15.sh,
        width: width ?? 0.15.sh,
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
            Image.asset(
              icon,
              height: 24.h,
              width: 24.w,
              color: Colors.orange.shade500,
            ),
            8.verticalSpace,
            title,
            8.verticalSpace,
            subTitle
          ],
        ),
      ),
    );
  }
}
