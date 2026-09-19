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
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final colorScheme = theme.colorScheme;

    return Material(
      elevation: 1,
      color: colorScheme.surfaceContainer,
      borderRadius: BorderRadius.circular(8.r),
      clipBehavior: Clip.antiAlias,
      child: Container(
        height: 0.18.sh,
        width: 0.18.sw,
        padding: EdgeInsets.all(8.r),
        decoration: BoxDecoration(
          border: Border.all(width: 0.5, color: colorScheme.outlineVariant),
          borderRadius: BorderRadius.circular(8.r),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon,
            Text(title, style: textTheme.titleMedium),
            Text(subtitle, style: textTheme.bodySmall),
            8.verticalSpace,
            if (showAction)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(actionTitle ?? '', style: textTheme.labelLarge),
                  2.horizontalSpace,
                  Icon(Icons.arrow_forward_rounded, size: 10.r),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
