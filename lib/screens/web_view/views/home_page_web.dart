import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/app_config.dart';
import '../../../controllers/home_screen_controller.dart';

class HomePageView extends StatelessWidget {
  final HomeController homeController;
  const HomePageView({
    super.key,
    required this.homeController,
  });

  @override
  Widget build(BuildContext context) {
    final isLight = homeController.themeMode == ThemeMode.light;
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    AppConfig().launch('https://github.com/RafiHasani');
                  },
                  icon: Image.asset(
                    'assets/images/github_logo.png',
                    color: Colors.blue,
                    height: 24.h,
                    width: 24.h,
                  ),
                ),
                16.verticalSpace,
                IconButton(
                  onPressed: () {
                    AppConfig().launch(
                        'https://af.linkedin.com/in/mrafi-hasani-2016?trk=people-guest_people_search-card');
                  },
                  icon: Container(
                    padding: EdgeInsets.all(1.r),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.r),
                      color: Colors.blue,
                    ),
                    child: Image.asset(
                      "assets/images/linkedin.png",
                      height: 22.h,
                      width: 22.h,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        16.horizontalSpace,
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              16.verticalSpace,
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "HI!",
                        style: TextStyle(
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Image.asset(
                        "assets/images/hi.png",
                        height: 16.h,
                        width: 16.w,
                      ),
                    ],
                  ),
                  Text(
                    "Mohammad Rafi \nHasani",
                    style: TextStyle(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              16.verticalSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 16.h,
                    height: 16.h,
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle,
                    ),
                  ),
                  8.horizontalSpace,
                  Expanded(
                    child: Text(
                      "Mobile Application Developer",
                      style: TextStyle(
                        fontSize: 8.sp,
                        fontWeight: FontWeight.w600,
                        color: isLight ? Colors.black54 : Colors.white60,
                      ),
                    ),
                  ),
                ],
              ),
              16.verticalSpace,
              Flexible(
                fit: FlexFit.loose,
                child: Text(
                  '''Thank you for visiting my portfolio! I am delighted to present my work as a professional mobile application developer. With a strong passion for creating apps that are intuitive and user-friendly, I have dedicated myself to developing innovative solutions that enhance and simplify everyday life. Through this portfolio, I aim to demonstrate the wide range of mobile applications I have created, each specifically designed to meet the unique needs and preferences of users. I am confident that my applications will captivate your interest.''',
                  style: TextStyle(
                    fontWeight: FontWeight.w200,
                    color: isLight ? Colors.black45 : Colors.white60,
                    height: 1.2.h,
                  ),
                  overflow: TextOverflow.visible,
                  // softWrap: true,
                ),
              ),
              24.verticalSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.share_location_sharp,
                    color: isLight ? Colors.black45 : Colors.white38,
                  ),
                  4.horizontalSpace,
                  Text(
                    "Kabul,",
                    style: TextStyle(
                      fontSize: 6.sp,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    " Afghanistan.",
                    style: TextStyle(
                      fontSize: 6.sp,
                      color: isLight ? Colors.black45 : Colors.white38,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              24.verticalSpace,
              ElevatedButton(
                onPressed: () {
                  AppConfig().launch(AppConfig().resumeUrl);
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Resume",
                      style: TextStyle(
                        fontSize: 6.sp,
                      ),
                    ),
                    4.horizontalSpace,
                    Icon(
                      Icons.chrome_reader_mode,
                      size: 12.r,
                    ),
                  ],
                ),
              ),
              8.verticalSpace,
            ],
          ),
        ),
        16.horizontalSpace,
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.r),
              child: Image.asset(
                "assets/images/myphoto0.jpeg",
                height: 0.3.sh,
                width: 0.2.sh,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
