import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:portfolioproject/controllers/home_screen_controller.dart';
import 'package:portfolioproject/screens/mobile_view/views/aboutme_view_mobile.dart';
import 'package:portfolioproject/screens/mobile_view/views/contuctus_view_mobile.dart';
import 'package:portfolioproject/screens/mobile_view/views/homepage_view_mobile.dart';
import 'package:portfolioproject/screens/mobile_view/views/profissional_experience_view_mobile.dart';
import 'package:portfolioproject/screens/mobile_view/views/myskills_view_mobile.dart';
import 'package:portfolioproject/widgets/bottombar.dart';
import 'package:portfolioproject/widgets/centeredview.dart';
import 'package:portfolioproject/widgets/navbar_mobile.dart';

class HomePageMobile extends StatelessWidget {
  HomePageMobile({super.key});

  final PageController controller =
      PageController(viewportFraction: 0.90, initialPage: 0);

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
                      trackColor: WidgetStateProperty.all(Colors.black38),
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
                  padEnds: true,
                  onPageChanged: (index) {
                    homeController.setPageIndex(index);
                  },
                  controller: controller,
                  scrollDirection: Axis.vertical,
                  pageSnapping: false,
                  children: [
                    HomePageMobileView(homeController: homeController),
                    AboutMeMobilePageView(homeController: homeController),
                    MySkillsMobilePageView(
                      homeController: homeController,
                    ),
                    ProfissionalExperiencePageView(
                        homeController: homeController),
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
