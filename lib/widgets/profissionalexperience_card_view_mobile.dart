import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolioproject/controllers/home_screen_controller.dart';

class ProfessionalExperienceCardMobile extends StatelessWidget {
  final HomeController homeController;
  final Function() viewMore;
  const ProfessionalExperienceCardMobile({
    super.key,
    required this.homeController,
    required this.viewMore,
    required this.icon,
    required this.subTitle,
    required this.title,
  });

  final String icon;
  final String subTitle;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 1,
      borderRadius: BorderRadius.circular(8.r),
      clipBehavior: Clip.antiAlias,
      child: Container(
        clipBehavior: Clip.antiAlias,
        height: 0.26.sh,
        width: 0.8.sw,
        padding: EdgeInsets.all(8.r),
        decoration: BoxDecoration(
          border: Border.all(
            width: 0.5,
            color: Colors.black12,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              icon,
              color: Colors.orange.shade400,
            ),
            8.verticalSpace,
            Text(
              title,
              style: TextStyle(
                fontSize: 10.sp,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            8.verticalSpace,
            Text(
              subTitle,
              style: TextStyle(
                fontSize: 10.sp,
                fontWeight: FontWeight.w600,
                color: Colors.black45,
              ),
            ),
            12.verticalSpace,
            TextButton(
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
                        fontSize: 10.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.black45,
                      ),
                    ),
                    2.horizontalSpace,
                    Icon(
                      Icons.arrow_forward_rounded,
                      size: 10.r,
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}