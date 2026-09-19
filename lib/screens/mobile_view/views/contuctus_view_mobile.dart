import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContactDetailsMobilePageView extends StatelessWidget {
  const ContactDetailsMobilePageView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final colorScheme = theme.colorScheme;

    return SingleChildScrollView(
      padding: EdgeInsets.zero,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Contact Details', style: textTheme.headlineSmall),
          4.verticalSpace,
          Text('Ways to get in touch with me', style: textTheme.bodyMedium),
          22.verticalSpace,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              16.verticalSpace,
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16.r),
                  ),
                  hintText: 'Write your name',
                  labelText: 'Name',
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                ),
              ),
              16.verticalSpace,
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16.r),
                  ),
                  hintText: 'Write your email',
                  labelText: 'Mail',
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                ),
              ),
              16.verticalSpace,
              SizedBox(
                height: 140.h,
                child: TextField(
                  expands: true,
                  maxLines: null,
                  textAlignVertical: TextAlignVertical.top,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16.r),
                    ),
                    hintText: 'What is on your mind!',
                    labelText: 'Message',
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                  ),
                ),
              ),
              22.verticalSpace,
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  elevation: 4,
                ),
                onPressed: () {},
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 4.w,
                    vertical: 10.h,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Send Message',
                        style: textTheme.labelLarge?.copyWith(
                          color: colorScheme.onPrimary,
                        ),
                      ),
                      4.horizontalSpace,
                      Transform.rotate(
                        angle: -50 * pi / 180,
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 8.h),
                          child: Icon(
                            Icons.send_rounded,
                            size: 15.r,
                            color: colorScheme.onPrimary,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              24.verticalSpace,
              Icon(
                Icons.email_outlined,
                size: 18.r,
                color: colorScheme.primary,
              ),
              8.verticalSpace,
              Text('rafihasani2010@gmail.com', style: textTheme.titleSmall),
              16.verticalSpace,
              Image.asset(
                'assets/images/whatsapp.png',
                height: 18.h,
                width: 18.h,
                color: colorScheme.primary,
              ),
              8.verticalSpace,
              Text('+93 707085670', style: textTheme.titleSmall),
            ],
          ),
          16.verticalSpace,
        ],
      ),
    );
  }
}
