import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:portfolioproject/constants/app_config.dart';

class HomePageMobileView extends StatelessWidget {
  const HomePageMobileView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final colorScheme = theme.colorScheme;

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        24.verticalSpace,

        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Mohammad Rafi \nHasani", style: textTheme.headlineSmall),

            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.r),
                    child: Image.asset(
                      "assets/images/myphoto0.jpeg",
                      height: 0.3.sw,
                      width: 0.24.sw,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),

        16.verticalSpace,

        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 16.h,
              height: 16.h,
              decoration: BoxDecoration(
                color: colorScheme.primary,
                shape: BoxShape.circle,
              ),
            ),

            8.horizontalSpace,

            Text(
              "Software Developer &\nMobile Application Developer",
              style: textTheme.titleSmall,
            ),
          ],
        ),

        16.verticalSpace,

        Text(
          '''Thank you for visiting my portfolio! I am delighted to present my work as a professional mobile application developer. With a strong passion for creating apps that are intuitive and user-friendly, I have dedicated myself to developing innovative solutions that enhance and simplify everyday life. Through this portfolio, I aim to demonstrate the wide range of mobile applications I have created, each specifically designed to meet the unique needs and preferences of users. I am confident that my applications will captivate your interest.''',
          style: textTheme.bodyMedium,
        ),

        24.verticalSpace,
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.share_location_sharp),
            4.horizontalSpace,
            Text("Kabul,", style: textTheme.titleSmall),
            Text(" Afghanistan.", style: textTheme.titleSmall),
          ],
        ),

        24.verticalSpace,

        ElevatedButton.icon(
          iconAlignment: .end,
          onPressed: () {
            AppConfig().launch(AppConfig().resumeUrl);
          },
          label: Text(
            "Resume",
            style: textTheme.labelLarge?.copyWith(color: theme.primaryColor),
          ),

          icon: Icon(Icons.download_for_offline_outlined, size: 16.r),
        ),
      ],
    );
  }
}
