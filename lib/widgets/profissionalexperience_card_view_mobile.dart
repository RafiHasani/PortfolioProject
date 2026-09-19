import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfessionalExperienceCardMobile extends StatelessWidget {
  const ProfessionalExperienceCardMobile({
    super.key,
    required this.viewMore,
    required this.icon,
    required this.subTitle,
    required this.title,
  });

  final String icon;
  final String subTitle;
  final String title;
  final VoidCallback viewMore;

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
        height: 0.26.sh,
        width: 0.8.sw,
        padding: EdgeInsets.all(8.r),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(width: 0.5, color: colorScheme.outlineVariant),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(icon, color: colorScheme.primary),

            8.verticalSpace,

            Text(title, style: textTheme.titleSmall),

            8.verticalSpace,

            Text(subTitle, style: textTheme.bodySmall),

            12.verticalSpace,

            TextButton(
              onPressed: viewMore,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("View More", style: textTheme.labelLarge),

                  2.horizontalSpace,

                  Icon(Icons.arrow_forward_rounded, size: 10.r),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
