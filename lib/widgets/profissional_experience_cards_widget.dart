import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyProfissionalExperienceCard extends StatelessWidget {
  final String icon;
  final String title;
  final String subTitle;
  final Function() viewMore;

  const MyProfissionalExperienceCard({
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
        height: 0.42.sh,
        width: 0.32.sh,
        padding: EdgeInsets.all(6.r),
        decoration: BoxDecoration(
          border: Border.all(width: 0.5, color: colorScheme.outlineVariant),
          borderRadius: BorderRadius.circular(8.r),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(child: Image.asset(icon)),
            8.verticalSpace,
            Text(title, style: textTheme.titleSmall),
            8.verticalSpace,
            Padding(
              padding: EdgeInsets.all(8.r),
              child: Text(
                subTitle,
                maxLines: 3,
                style: textTheme.bodySmall,
                overflow: TextOverflow.ellipsis,
              ),
            ),
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
