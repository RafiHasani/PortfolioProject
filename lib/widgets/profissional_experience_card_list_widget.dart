import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyProfissionalExperienceCardMobileView extends StatelessWidget {
  final String icon;
  final String title;
  final String subTitle;
  final Function() viewMore;
  final Widget? icons;
  const MyProfissionalExperienceCardMobileView({
    super.key,
    required this.icon,
    required this.title,
    required this.subTitle,
    required this.viewMore,
    this.icons,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 1,
      borderRadius: BorderRadius.circular(8.r),
      clipBehavior: Clip.antiAlias,
      child: Container(
        clipBehavior: Clip.antiAlias,
        height: 0.60.sh,
        width: 0.24.sw,
        padding: EdgeInsets.all(6.r),
        decoration: BoxDecoration(
          border: Border.all(
            width: 0.5,
            color: Colors.black12,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            icons != null
                ? icons!
                : Image.asset(
                    icon,
                    height: 0.40.sh,
                  ),
            14.verticalSpace,
            Text(
              title,
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            8.verticalSpace,
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                subTitle,
                maxLines: 2,
                style: TextStyle(
                  fontSize: 6.sp,
                  fontWeight: FontWeight.w300,
                  color: Colors.black45,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
            12.verticalSpace,
            Expanded(
              child: TextButton(
                  onPressed: () {
                    viewMore();
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "View More",
                        style: TextStyle(
                          fontSize: 8.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.black45,
                        ),
                      ),
                      2.horizontalSpace,
                      Icon(
                        Icons.arrow_forward_rounded,
                        size: 12.r,
                      )
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}
