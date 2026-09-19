import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyskillsCard extends StatelessWidget {
  final String icon;
  final String title;
  final String subTitle;
  final Function() viewMore;

  const MyskillsCard({
    super.key,
    required this.icon,
    required this.title,
    required this.subTitle,
    required this.viewMore,
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
        height: 0.32.sh,
        width: 0.22.sw,
        padding: EdgeInsets.all(6.r),
        decoration: BoxDecoration(
          border: Border.all(width: 0.5, color: colorScheme.outlineVariant),
          borderRadius: BorderRadius.circular(8.r),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(icon, color: Colors.orange.shade400),
            8.verticalSpace,
            Text(title, style: textTheme.titleMedium),
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
