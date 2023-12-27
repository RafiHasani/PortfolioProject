import 'dart:math';

import 'package:countup/countup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:portfolioproject/constants/app_config.dart';
import 'package:portfolioproject/controllers/home_screen_controller.dart';
import 'package:portfolioproject/screens/web_view/views/profissional_experience_flutterdialog_web.dart';
import 'package:portfolioproject/screens/web_view/views/profissional_experience_swiftdialog_web.dart';
import 'package:portfolioproject/widgets/bottombar.dart';
import 'package:portfolioproject/widgets/centeredview.dart';
import 'package:portfolioproject/widgets/navbar_mobile.dart';

class HomePageMobile extends StatelessWidget {
  HomePageMobile({super.key});

  final PageController controller = PageController(viewportFraction: 0.90);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (homeController) {
      return Scaffold(
        appBar: homeController.pageIndex == 4
            ? null
            : PreferredSize(
                preferredSize: Size.fromHeight(60.h),
                child: NavBarMobileWidget(
                    homeController: homeController,
                    menuCallback: (innerContext) {
                      Scaffold.of(innerContext).openDrawer();
                    }),
              ),
        drawer: SizedBox(
          width: 0.5.sw,
          height: 0.8.sh,
          child: Drawer(
            backgroundColor: homeController.themeMode == ThemeMode.light
                ? Colors.white
                : Colors.white70,
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusDirectional.only(
                topEnd: Radius.circular(50.r),
                bottomEnd: Radius.circular(50.r),
              ),
            ),
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                32.verticalSpace,
                ListTile(
                  leading: const Icon(
                    Icons.home,
                    color: Colors.blue,
                  ),
                  title: const Text('Home'),
                  onTap: () {
                    Navigator.pop(context);
                    controller.animateToPage(0,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.fastOutSlowIn);
                  },
                ),
                ListTile(
                  leading: const Icon(
                    Icons.account_box_outlined,
                    color: Colors.blue,
                  ),
                  title: const Text('About Me'),
                  onTap: () {
                    Navigator.pop(context);
                    controller.animateToPage(1,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.fastOutSlowIn);
                  },
                ),
                ListTile(
                  leading: const Icon(
                    Icons.skateboarding_rounded,
                    color: Colors.blue,
                  ),
                  title: const Text('Skills'),
                  onTap: () {
                    Navigator.pop(context);
                    controller.animateToPage(2,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.fastOutSlowIn);
                  },
                ),
                ListTile(
                  leading: Image.asset(
                    'assets/images/stack.png',
                    color: Colors.blue,
                    height: 16.h,
                    width: 16.h,
                  ),
                  title: const Text('Experience'),
                  onTap: () {
                    Navigator.pop(context);
                    controller.animateToPage(3,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.fastOutSlowIn);
                  },
                ),
                ListTile(
                  leading: const Icon(
                    Icons.contact_phone,
                    color: Colors.blue,
                  ),
                  title: const Text('Contact Me'),
                  onTap: () {
                    Navigator.pop(context);
                    controller.animateToPage(4,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.fastOutSlowIn);
                  },
                ),
                ListTile(
                  leading: const Icon(
                    Icons.brightness_4_outlined,
                    color: Colors.blue,
                  ),
                  title: Text(homeController.themeMode == ThemeMode.light
                      ? 'DarkMode'
                      : 'LightMode'),
                  trailing: Switch(
                      trackColor: MaterialStateProperty.all(Colors.black38),
                      activeColor: Colors.green.withOpacity(0.4),
                      activeThumbImage:
                          const AssetImage('assets/images/night.png'),
                      inactiveThumbImage:
                          const AssetImage('assets/images/light.png'),
                      value: homeController.themeMode == ThemeMode.light
                          ? false
                          : true,
                      onChanged: (_) {
                        homeController.setThemeMode(
                          homeController.themeMode == ThemeMode.light
                              ? ThemeMode.dark
                              : ThemeMode.light,
                        );
                      }),

                  //  ToggleSwitch(
                  //   minHeight: 32.h,
                  //   minWidth: 60.w,
                  //   initialLabelIndex: 0,
                  //   cornerRadius: 20.0,
                  //   activeFgColor: Colors.white,
                  //   inactiveFgColor: Colors.white,
                  //   totalSwitches: 2,
                  //   icons: const [Icons.sunny, Icons.nightlight],
                  //   iconSize: 30.0,
                  //   activeBgColors: const [
                  //     [Colors.yellow, Colors.orange],
                  //     [Colors.black45, Colors.black87],
                  //   ],
                  //   inactiveBgColor: Colors.black38,
                  //   animate:
                  //       true, // with just animate set to true, default curve = Curves.easeIn
                  //   curve: Curves
                  //       .bounceInOut, // animate must be set to true when using custom curve
                  //   onToggle: (index) {
                  //     homeController.setThemeMode(
                  //       homeController.themeMode == ThemeMode.light
                  //           ? ThemeMode.dark
                  //           : ThemeMode.light,
                  //     );
                  //   },
                  // ),
                  onTap: () {},
                ),
              ],
            ),
          ),
        ),
        body: CenteredView(
          child: Row(
            children: [
              Expanded(
                child: PageView(
                  padEnds: false,
                  onPageChanged: (index) {
                    homeController.setPageIndex(index);
                  },
                  controller: controller,
                  scrollDirection: Axis.vertical,
                  pageSnapping: false,
                  children: [
                    HomePageMobileView(homeController: homeController),
                    AboutMeMobilePageView(homeController: homeController),
                    const MySkillMobilePageView(),
                    ProfessionalExperienceMobilePageView(
                      homeController: homeController,
                    ),
                    ContactDetailsMobilePageView(
                      homeController: homeController,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: homeController.pageIndex > 2
            ? Padding(
                padding: EdgeInsetsDirectional.only(
                  bottom: 50.h,
                  end: 20.w,
                ),
                child: Material(
                  borderRadius: BorderRadius.circular(
                    16.r,
                  ),
                  clipBehavior: Clip.antiAlias,
                  color: homeController.themeMode == ThemeMode.light
                      ? Colors.black
                      : Colors.white70,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(
                      16.r,
                    ),
                    onTap: () {
                      controller.animateToPage(
                        0,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.fastOutSlowIn,
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.all(4.r),
                      decoration: BoxDecoration(
                        color: homeController.themeMode == ThemeMode.light
                            ? Colors.black
                            : Colors.white70,
                        borderRadius: BorderRadius.circular(
                          16.r,
                        ),
                      ),
                      child: Icon(
                        Icons.arrow_upward_rounded,
                        color: homeController.themeMode == ThemeMode.light
                            ? Colors.white
                            : Colors.black,
                      ),
                    ),
                  ),
                ),
              )
            : null,
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        bottomNavigationBar: homeController.pageIndex == 4
            ? BottomBarWidget(
                homeController: homeController,
                bottomNavCallback: (int index) {
                  switch (index) {
                    case 0:
                      controller.animateToPage(0,
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.fastOutSlowIn);
                      break;
                    case 1:
                      controller.animateToPage(1,
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.fastOutSlowIn);
                      break;
                    case 2:
                      controller.animateToPage(2,
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.fastOutSlowIn);
                      break;
                    default:
                      controller.animateToPage(0,
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.fastOutSlowIn);
                  }
                },
              )
            : const SizedBox(
                height: 1,
              ),
      );
    });
  }
}

class ContactDetailsMobilePageView extends StatelessWidget {
  const ContactDetailsMobilePageView({
    super.key,
    required this.homeController,
  });

  final HomeController homeController;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.zero,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Contact Details",
            style: TextStyle(
              fontSize: 24.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          4.verticalSpace,
          Text(
            "Ways to get in touch with me",
            style: TextStyle(
              fontSize: 10.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
          22.verticalSpace,
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  16.verticalSpace,
                  TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16.r),
                        ),
                        hintText: 'Write your name',
                        labelText: 'Name',
                        floatingLabelBehavior: FloatingLabelBehavior.always),
                  ),
                  16.verticalSpace,
                  TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16.r),
                        ),
                        hintText: 'Write your email',
                        labelText: 'Mail',
                        floatingLabelBehavior: FloatingLabelBehavior.always),
                  ),
                  16.verticalSpace,
                  SizedBox(
                    height: 140.h,
                    child: TextField(
                      textAlignVertical: TextAlignVertical.top,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16.r),
                        ),
                        hintText: 'What is on your mind!',
                        labelText: 'Message',
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                      ),
                      expands: true,
                      maxLines: null,
                    ),
                  ),
                  22.verticalSpace,
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      elevation: 4,
                    ),
                    onPressed: () {},
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 4.w,
                        vertical: 10.h,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Send Message",
                            style: TextStyle(
                              fontSize: 12.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          4.horizontalSpace,
                          Transform.rotate(
                            angle: -50 * pi / 180,
                            child: Padding(
                              padding: EdgeInsets.only(bottom: 8.h),
                              child: Icon(
                                Icons.send_rounded,
                                size: 15.r,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              24.verticalSpace,
              Icon(
                Icons.email_outlined,
                size: 18.r,
                color: Colors.orange.shade500,
              ),
              8.verticalSpace,
              Text(
                'rafihasani2010@gmail.com',
                style: TextStyle(
                  fontSize: 12.sp,
                  color: homeController.themeMode == ThemeMode.light
                      ? Colors.black
                      : Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
              16.verticalSpace,
              Image.asset(
                'assets/images/whatsapp.png',
                height: 18.h,
                width: 18.h,
                color: Colors.orange.shade500,
              ),
              8.verticalSpace,
              Text(
                '+93 707085670',
                style: TextStyle(
                    fontSize: 12.sp,
                    color: homeController.themeMode == ThemeMode.light
                        ? Colors.black
                        : Colors.white,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
          16.verticalSpace,
        ],
      ),
    );
  }
}

class ContactTalkCardWidget extends StatelessWidget {
  const ContactTalkCardWidget({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.showAction,
    this.actionTitle,
  });

  final String? actionTitle;
  final Widget icon;
  final bool showAction;
  final String subtitle;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 1,
      borderRadius: BorderRadius.circular(8.r),
      clipBehavior: Clip.antiAlias,
      child: Container(
        clipBehavior: Clip.antiAlias,
        height: 0.16.sh,
        width: 0.28.sw,
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
            icon,
            Text(
              title,
              style: TextStyle(
                fontSize: 6.sp,
                fontWeight: FontWeight.bold,
                color: Colors.black45,
              ),
            ),
            Text(
              subtitle,
              style: TextStyle(
                fontSize: 6.sp,
                fontWeight: FontWeight.w500,
                color: Colors.black45,
              ),
            ),
            if (showAction)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    actionTitle ?? '',
                    style: TextStyle(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.black45,
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_rounded,
                    size: 10.r,
                  )
                ],
              ),
          ],
        ),
      ),
    );
  }
}

class ProfessionalExperienceMobilePageView extends StatelessWidget {
  final HomeController homeController;
  const ProfessionalExperienceMobilePageView({
    super.key,
    required this.homeController,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Professional Experience",
          style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        8.verticalSpace,
        Text(
          "Experiences I have Acquired",
          style: TextStyle(
            fontSize: 10.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
        32.verticalSpace,
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ProfessionalExperienceCardMobile(
              icon: 'assets/images/swift.png',
              title: 'Swift (iOS)',
              subTitle: 'Andpercent',
              homeController: homeController,
              viewMore: () {
                Get.dialog(
                  ProfissionalExperienceDialogWidgetSwift(
                    homeController: homeController,
                  ),
                );
              },
            ),
            8.verticalSpace,
            ProfessionalExperienceCardMobile(
              icon: 'assets/images/flutter.png',
              title: 'Flutter',
              subTitle: 'Veroke',
              homeController: homeController,
              viewMore: () {
                Get.dialog(
                  ProfissionalExperienceDialogFlutterWidget(
                    homeController: homeController,
                  ),
                );
              },
            ),
          ],
        ),
      ],
    );
  }
}

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

class MySkillMobilePageView extends StatelessWidget {
  const MySkillMobilePageView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        24.verticalSpace,
        Text(
          "My Skills",
          style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        8.verticalSpace,
        Text(
          "A Glance of My Skills",
          style: TextStyle(
            fontSize: 12.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
        32.verticalSpace,
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const MySkillFrontEndCardMobile(),
            16.verticalSpace,
            const MySkillProgramLanguageCardMobile()
          ],
        )
      ],
    );
  }
}

class MySkillProgramLanguageCardMobile extends StatelessWidget {
  const MySkillProgramLanguageCardMobile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Material(
          elevation: 1,
          borderRadius: BorderRadius.circular(8.r),
          clipBehavior: Clip.antiAlias,
          child: Container(
            clipBehavior: Clip.antiAlias,
            height: 0.24.sh,
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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Programming Languages',
                  style: TextStyle(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w800,
                      color: Colors.black),
                  textAlign: TextAlign.center,
                ),
                Padding(
                  padding: EdgeInsets.all(16.r),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      24.verticalSpace,
                      Row(
                        children: [
                          Image.asset(
                            'assets/images/programming_lang.png',
                            height: 24.h,
                            width: 24.w,
                            color: Colors.orange.shade500,
                          ),
                          Text(
                            'Swift',
                            style: TextStyle(
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                          ),
                        ],
                      ),
                      16.verticalSpace,
                      Row(
                        children: [
                          Image.asset(
                            'assets/images/programming_lang.png',
                            height: 24.h,
                            width: 24.w,
                            color: Colors.orange.shade500,
                          ),
                          Text(
                            'Dart',
                            style: TextStyle(
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class MySkillFrontEndCardMobile extends StatelessWidget {
  const MySkillFrontEndCardMobile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Material(
          elevation: 1,
          borderRadius: BorderRadius.circular(8.r),
          clipBehavior: Clip.antiAlias,
          child: Container(
            clipBehavior: Clip.antiAlias,
            height: 0.24.sh,
            width: 0.8.sw,
            padding: EdgeInsets.all(8.r),
            decoration: BoxDecoration(
              border: Border.all(
                width: 0.5,
                color: Colors.black12,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.all(16.r),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Frontend Deverloper',
                    style: TextStyle(
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w800,
                        color: Colors.black),
                    textAlign: TextAlign.center,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      24.verticalSpace,
                      Row(
                        children: [
                          Image.asset(
                            'assets/images/checkmark.png',
                            height: 24.h,
                            width: 24.w,
                            color: Colors.orange.shade500,
                          ),
                          Text(
                            'UIkit(Swift)',
                            style: TextStyle(
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                          ),
                        ],
                      ),
                      16.verticalSpace,
                      Row(
                        children: [
                          Image.asset(
                            'assets/images/checkmark.png',
                            height: 24.h,
                            width: 24.w,
                            color: Colors.orange.shade500,
                          ),
                          Text(
                            'Flutter',
                            style: TextStyle(
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class AboutMeMobilePageView extends StatelessWidget {
  const AboutMeMobilePageView({
    super.key,
    required this.homeController,
  });

  final HomeController homeController;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "About Me!",
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            4.verticalSpace,
            Text(
              "A Look Into My Background!",
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
        24.verticalSpace,
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    16.verticalSpace,
                    Text(
                      "Hello there!",
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    8.verticalSpace,
                    Text(
                      '''Hello, my name is Mohammad Rafi. I am a mobile application developer with 2 years of experience. I have successfully completed 7 projects, including iOS native applications and hybrid applications developed using Flutter. I specialize in creating user-friendly and visually appealing mobile applications that provide a seamless user experience. With my expertise in iOS development and Flutter, I am confident in my ability to contribute to any mobile app development project. I am constantly learning and staying updated with the latest trends and technologies in the mobile app development industry. I am excited to bring my skills and experience to new challenges and contribute to the success of future projects.''',
                      style: TextStyle(
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w500,
                        color: homeController.themeMode == ThemeMode.light
                            ? Colors.black45
                            : Colors.white60,
                      ),
                    ),
                    16.verticalSpace,
                    Expanded(
                      child: ListView(
                        shrinkWrap: true,
                        children: [
                          AboutMeCardsMobileWidget(
                            icon: "assets/images/graduation_hat.png",
                            title: Text(
                              'Education',
                              style: TextStyle(
                                fontSize: 10.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            subTitle: Text(
                              'Bochlor\'s in Computer Science',
                              style: TextStyle(
                                fontSize: 8.sp,
                                fontWeight: FontWeight.w600,
                                color: Colors.black38,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            height: 0.15.sh,
                            width: 0.6.sw,
                          ),
                          8.verticalSpace,
                          AboutMeCardsMobileWidget(
                            icon: "assets/images/stack.png",
                            title: Text(
                              'Experience',
                              style: TextStyle(
                                fontSize: 10.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            subTitle: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Countup(
                                  begin: 0,
                                  end: 2,
                                  duration: const Duration(seconds: 2),
                                  style: TextStyle(
                                    fontSize: 8.sp,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black38,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                2.horizontalSpace,
                                Text(
                                  '+ Years',
                                  style: TextStyle(
                                    fontSize: 8.sp,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black38,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                            height: 0.15.sh,
                            width: 0.6.sw,
                          ),
                          8.verticalSpace,
                          AboutMeCardsMobileWidget(
                            icon: 'assets/images/flash_filled.png',
                            title: Text(
                              'Projects',
                              style: TextStyle(
                                fontSize: 10.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            subTitle: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Countup(
                                  begin: 0,
                                  end: 7,
                                  duration: const Duration(seconds: 2),
                                  style: TextStyle(
                                    fontSize: 8.sp,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black38,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                2.horizontalSpace,
                                Text(
                                  '+ Projects',
                                  style: TextStyle(
                                    fontSize: 8.sp,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black38,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                            height: 0.15.sh,
                            width: 0.6.sw,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class AboutMeCardsMobileWidget extends StatelessWidget {
  const AboutMeCardsMobileWidget({
    super.key,
    required this.icon,
    required this.title,
    required this.subTitle,
    this.height,
    this.width,
  });

  final double? height;
  final String icon;
  final Widget subTitle;
  final Widget title;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 1,
      borderRadius: BorderRadius.circular(8.r),
      clipBehavior: Clip.antiAlias,
      child: Container(
        clipBehavior: Clip.antiAlias,
        height: height ?? 0.15.sh,
        width: width ?? 0.15.sh,
        padding: EdgeInsets.all(8.r),
        decoration: BoxDecoration(
          border: Border.all(
            width: 0.5,
            color: Colors.black12,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              icon,
              height: 24.h,
              width: 24.w,
              color: Colors.orange.shade500,
            ),
            8.verticalSpace,
            title,
            8.verticalSpace,
            subTitle
          ],
        ),
      ),
    );
  }
}

class HomePageMobileView extends StatelessWidget {
  const HomePageMobileView({
    super.key,
    required this.homeController,
  });

  final HomeController homeController;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        24.verticalSpace,
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Mohammad Rafi \nHasani",
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.r),
                    child: Image.asset(
                      "assets/images/myphoto0.jpeg",
                      height: 0.3.sw,
                      width: 0.24.sw,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        16.verticalSpace,
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
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
            Text(
              "Software Developer &\nMobile Application Developer",
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w600,
                color: homeController.themeMode == ThemeMode.light
                    ? Colors.black54
                    : Colors.white60,
              ),
            ),
          ],
        ),
        16.verticalSpace,
        SizedBox(
          child: Text(
            '''Thank you for visiting my portfolio! I am delighted to present my work as a professional mobile application developer. With a strong passion for creating apps that are intuitive and user-friendly, I have dedicated myself to developing innovative solutions that enhance and simplify everyday life. Through this portfolio, I aim to demonstrate the wide range of mobile applications I have created, each specifically designed to meet the unique needs and preferences of users. I am confident that my applications will captivate your interest.''',
            style: TextStyle(
              fontSize: 10.sp,
              fontWeight: FontWeight.w500,
              color: homeController.themeMode == ThemeMode.light
                  ? Colors.black45
                  : Colors.white60,
              height: 1.2.h,
            ),
          ),
        ),
        24.verticalSpace,
        Row(
          children: [
            Icon(
              Icons.share_location_sharp,
              color: homeController.themeMode == ThemeMode.light
                  ? Colors.black45
                  : Colors.white38,
            ),
            4.horizontalSpace,
            Text(
              "Kabul,",
              style: TextStyle(
                fontSize: 12.sp,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              " Afghanistan.",
              style: TextStyle(
                fontSize: 12.sp,
                color: homeController.themeMode == ThemeMode.light
                    ? Colors.black45
                    : Colors.white38,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        24.verticalSpace,
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.r),
            ),
            elevation: 4,
          ),
          onPressed: () {
            AppConfig().launch(
                'https://drive.google.com/file/d/1YkqLrrI5BPh0cx-pX3hvYxnglRi22Mqi/view');
          },
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 4.w,
              vertical: 10.h,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Resume",
                ),
                4.horizontalSpace,
                Icon(
                  Icons.download_for_offline_outlined,
                  size: 16.r,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
