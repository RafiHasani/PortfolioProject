import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContactTalkCardWidget extends StatelessWidget {
  final Widget icon;
  final String title;
  final String subtitle;
  final bool showAction;
  final String? actionTitle;
  const ContactTalkCardWidget({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.showAction,
    this.actionTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 1,
      borderRadius: BorderRadius.circular(8.r),
      clipBehavior: Clip.antiAlias,
      child: Container(
        clipBehavior: Clip.antiAlias,
        height: 0.20.sh,
        width: 0.22.sw,
        padding: EdgeInsets.all(8.r),
        decoration: BoxDecoration(
          border: Border.all(
            width: 0.5,
            color: Colors.black12,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon,
            Text(
              title,
              style: TextStyle(
                fontSize: 6.sp,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
            4.verticalSpace,
            Text(
              subtitle,
              style: TextStyle(
                fontSize: 4.sp,
                fontWeight: FontWeight.w400,
                color: Colors.black45,
              ),
            ),
            12.verticalSpace,
            if (showAction)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    actionTitle ?? '',
                    style: TextStyle(
                      fontSize: 6.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.black45,
                    ),
                  ),
                  2.horizontalSpace,
                  Icon(
                    Icons.arrow_forward_rounded,
                    size: 10.r,
                  )
                ],
              ),
          ],
        ),
      ),
    );
  }
}
