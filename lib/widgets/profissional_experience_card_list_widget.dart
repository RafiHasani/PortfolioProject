import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyProfissionalExperienceCardMobileView extends StatelessWidget {
  const MyProfissionalExperienceCardMobileView({
    super.key,
    required this.icon,
    required this.title,
    required this.subTitle,
    required this.viewMore,
    this.icons,
  });

  final String icon;
  final String title;
  final String subTitle;
  final VoidCallback viewMore;
  final Widget? icons;

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
        height: 0.70.sh,
        width: 0.24.sw,
        padding: .all(6.r),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(width: 0.5, color: colorScheme.outlineVariant),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icons ?? Image.asset(icon, height: 0.40.sh),
            14.verticalSpace,
            Text(
              title,
              style: textTheme.titleMedium,
              textAlign: TextAlign.center,
            ),
            8.verticalSpace,
            Padding(
              padding: .all(8.0),
              child: Text(
                subTitle,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: textTheme.bodySmall,
                textAlign: TextAlign.center,
              ),
            ),
            12.verticalSpace,
            TextButton(
              onPressed: viewMore,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('View More', style: textTheme.labelLarge),
                  2.horizontalSpace,
                  Icon(Icons.arrow_forward_rounded, size: 12.r),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
