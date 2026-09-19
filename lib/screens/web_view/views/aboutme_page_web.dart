import 'package:countup/countup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../controllers/home_screen_controller.dart';
import '../../../widgets/aboutme_card_widget.dart';

class AboutMePageView extends StatelessWidget {
  final HomeController homeController;
  const AboutMePageView({super.key, required this.homeController});
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("About Me!", style: textTheme.displayLarge),
            4.verticalSpace,
            Text("A Look Into My Background!", style: textTheme.displayLarge),
          ],
        ),
        24.verticalSpace,
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("Hello there!", style: textTheme.titleMedium),
                4.verticalSpace,
                SingleChildScrollView(
                  child: SizedBox(
                    width: 0.40.sw,
                    child: Text(
                      '''Hello, my name is Mohammad Rafi. I am a mobile application developer with 3 years of experience. I have successfully completed 7 projects, including iOS native applications and hybrid applications developed using Flutter. I specialize in creating user-friendly and visually appealing mobile applications that provide a seamless user experience. With my expertise in iOS development and Flutter, I am confident in my ability to contribute to any mobile app development project. I am constantly learning and staying updated with the latest trends and technologies in the mobile app development industry. I am excited to bring my skills and experience to new challenges and contribute to the success of future projects.''',
                      style: textTheme.bodyMedium,
                      overflow: TextOverflow.visible,
                    ),
                  ),
                ),
                16.verticalSpace,
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Say Hello",
                    style: textTheme.titleSmall?.copyWith(
                      color: theme.primaryColor,
                    ),
                  ),
                ),
              ],
            ),
            8.horizontalSpace,
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    AboutMeCardsWidget(
                      icon: "assets/images/graduation_hat.png",
                      title: Container(),
                      subTitle: Text(
                        'BS Computer Science',
                        style: textTheme.labelSmall,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    4.verticalSpace,
                    AboutMeCardsWidget(
                      icon: "assets/images/stack.png",
                      title: Container(),
                      subTitle: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Countup(
                            begin: 0,
                            end: 3,
                            duration: const Duration(seconds: 2),
                            style: textTheme.labelSmall,
                            textAlign: TextAlign.center,
                          ),
                          2.horizontalSpace,
                          Text(
                            '+ Years',
                            style: textTheme.labelSmall,
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    4.verticalSpace,
                    AboutMeCardsWidget(
                      icon: 'assets/images/flash_filled.png',
                      title: Container(),
                      subTitle: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Countup(
                            begin: 0,
                            end: 7,
                            duration: const Duration(seconds: 2),
                            style: textTheme.labelSmall,
                            textAlign: TextAlign.center,
                          ),
                          2.horizontalSpace,
                          Text(
                            '+ Projects',
                            style: textTheme.labelSmall,
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                28.verticalSpace,
              ],
            ),
          ],
        ),
      ],
    );
  }
}
