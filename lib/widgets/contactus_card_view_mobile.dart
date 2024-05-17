import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContactTalkCardWidget extends StatelessWidget {
  const ContactTalkCardWidget({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.showAction,
    this.actionTitle,
  });

  final String? actionTitle;
  final Widget icon;
  final bool showAction;
  final String subtitle;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 1,
      borderRadius: BorderRadius.circular(8.r),
      clipBehavior: Clip.antiAlias,
      child: Container(
        clipBehavior: Clip.antiAlias,
        height: 0.16.sh,
        width: 0.28.sw,
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
                fontWeight: FontWeight.bold,
                color: Colors.black45,
              ),
            ),
            Text(
              subtitle,
              style: TextStyle(
                fontSize: 6.sp,
                fontWeight: FontWeight.w500,
                color: Colors.black45,
              ),
            ),
            if (showAction)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    actionTitle ?? '',
                    style: TextStyle(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.black45,
                    ),
                  ),
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