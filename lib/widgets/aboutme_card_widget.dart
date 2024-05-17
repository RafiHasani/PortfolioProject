import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AboutMeCardsWidget extends StatelessWidget {
  final String icon;
  final Widget title;
  final Widget subTitle;
  const AboutMeCardsWidget({
    super.key,
    required this.icon,
    required this.title,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 1,
      borderRadius: BorderRadius.circular(8.r),
      clipBehavior: Clip.antiAlias,
      child: Container(
        clipBehavior: Clip.antiAlias,
        height: 0.12.sh,
        width: 0.16.sw,
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
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              icon,
              height: 16.h,
              width: 16.w,
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
