import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/app_config.dart';

class MySkillsDialogWidgetSwift extends StatelessWidget {
  const MySkillsDialogWidgetSwift({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final colorScheme = theme.colorScheme;

    return Center(
      child: Container(
        height: 0.5.sh,
        width: AppConfig().getDeviceScreenType(context) == 0 ? 0.7.sw : 0.8.sw,
        padding: EdgeInsets.all(16.r),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          color: colorScheme.surfaceContainer,
        ),
        child: Padding(
          padding: EdgeInsets.all(8.r),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Veroke',
                style: textTheme.titleMedium?.copyWith(
                  decoration: TextDecoration.none,
                ),
              ),
              24.verticalSpace,
              Text(
                'I started working as junior software developer in March 2021 '
                'with Veroke. I was developing mobile applications for iOS platform.',
                style: textTheme.bodyMedium?.copyWith(
                  height: 1.3,
                  decoration: TextDecoration.none,
                ),
                textAlign: TextAlign.center,
              ),
              8.verticalSpace,
              Padding(
                padding: EdgeInsets.all(8.r),
                child: Column(
                  children: [
                    _buildSkillItem(context, 'UI : Figma design to Storyboard'),
                    8.verticalSpace,
                    _buildSkillItem(
                      context,
                      'Design Pattern : MVC, MVVM',
                      iconSize: 16.r,
                    ),
                    8.verticalSpace,
                    _buildSkillItem(context, 'API : REST API implementation'),
                    8.verticalSpace,
                    _buildSkillItem(context, 'Tools : Xcode'),
                    8.verticalSpace,
                    _buildSkillItem(
                      context,
                      '#Projects : ThriftPlan, ArtStation, SpaStation',
                    ),
                    8.verticalSpace,
                    _buildSkillItem(
                      context,
                      'Payment Gateway Integration : '
                      'Payfort, Tabby payment system',
                      icon: Icons.payments,
                      iconSize: 7.r,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSkillItem(
    BuildContext context,
    String text, {
    IconData icon = Icons.arrow_forward,
    double? iconSize,
  }) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final colorScheme = theme.colorScheme;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(icon, color: colorScheme.primary, size: iconSize ?? 8.r),
        4.horizontalSpace,
        Expanded(
          child: Text(
            text,
            style: textTheme.bodySmall?.copyWith(
              decoration: TextDecoration.none,
            ),
          ),
        ),
      ],
    );
  }
}
