import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/app_config.dart';

class MySkillsDialogFlutterWidget extends StatelessWidget {
  const MySkillsDialogFlutterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final colorScheme = theme.colorScheme;

    return Center(
      child: Container(
        height: 0.5.sh,
        width: AppConfig().getDeviceScreenType(context) == 0 ? 0.5.sw : 0.8.sw,
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
                'In September 2022 work as Flutter developer with Veroke. '
                'I was developing mobile application for both iOS & Android platforms.',
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
                    _buildSkillItem(context, 'UI : Figma design to Flutter UI'),
                    8.verticalSpace,
                    _buildSkillItem(context, 'State Management : GetX, BLoC'),
                    8.verticalSpace,
                    _buildSkillItem(context, 'Design Pattern : MVC'),
                    8.verticalSpace,
                    _buildSkillItem(
                      context,
                      'API : REST & SOAP API implementation',
                    ),
                    8.verticalSpace,
                    _buildSkillItem(context, 'Tools : VSCode'),
                    8.verticalSpace,
                    _buildSkillItem(
                      context,
                      '#Projects : American Express KSA, Majoor',
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

  Widget _buildSkillItem(BuildContext context, String text) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final colorScheme = theme.colorScheme;

    return Row(
      children: [
        Icon(Icons.arrow_forward, color: colorScheme.primary, size: 8.r),
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
