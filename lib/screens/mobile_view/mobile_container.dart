import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:portfolioproject/controllers/home_screen_controller.dart';
import 'package:portfolioproject/screens/mobile_view/views/aboutme_view_mobile.dart';
import 'package:portfolioproject/screens/mobile_view/views/contuctus_view_mobile.dart';
import 'package:portfolioproject/screens/mobile_view/views/homepage_view_mobile.dart';
import 'package:portfolioproject/screens/mobile_view/views/myskills_view_mobile.dart';
import 'package:portfolioproject/screens/mobile_view/views/profissional_experience_view_mobile.dart';
import 'package:portfolioproject/widgets/bottombar.dart';
import 'package:portfolioproject/widgets/centeredview.dart';
import 'package:portfolioproject/widgets/navbar_mobile.dart';
import 'package:portfolioproject/widgets/sparkals_animation_container.dart';

class HomePageMobile extends StatelessWidget {
  HomePageMobile({super.key});

  final PageController controller = PageController(
    viewportFraction: 0.90,
    initialPage: 0,
  );

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (homeController) {
        final theme = Theme.of(context);
        final textTheme = theme.textTheme;
        final colorScheme = theme.colorScheme;

        return Scaffold(
          appBar: homeController.pageIndex == 4
              ? null
              : NavBarMobileWidget(
                  homeController: homeController,
                  menuCallback: (innerContext) {
                    Scaffold.of(innerContext).openDrawer();
                  },
                ),

          drawer: SizedBox(
            width: 0.5.sw,
            height: 0.8.sh,
            child: Drawer(
              backgroundColor: colorScheme.surface,
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
                    leading: Icon(
                      Icons.home,
                      color: colorScheme.primary,
                      size: 20.r,
                    ),
                    title: Text('Home', style: textTheme.bodySmall),
                    onTap: () {
                      Navigator.pop(context);
                      controller.animateToPage(
                        0,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.fastOutSlowIn,
                      );
                    },
                  ),

                  ListTile(
                    leading: Icon(
                      Icons.account_box_outlined,
                      color: colorScheme.primary,
                      size: 20.r,
                    ),
                    title: Text('About Me', style: textTheme.bodySmall),
                    onTap: () {
                      Navigator.pop(context);
                      controller.animateToPage(
                        1,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.fastOutSlowIn,
                      );
                    },
                  ),

                  ListTile(
                    leading: Icon(
                      Icons.skateboarding_rounded,
                      color: colorScheme.primary,
                      size: 20.r,
                    ),
                    title: Text('Skills', style: textTheme.bodySmall),
                    onTap: () {
                      Navigator.pop(context);
                      controller.animateToPage(
                        2,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.fastOutSlowIn,
                      );
                    },
                  ),

                  ListTile(
                    leading: Image.asset(
                      'assets/images/stack.png',
                      color: colorScheme.primary,
                      height: 20.h,
                      width: 20.h,
                    ),
                    title: Text('Experience', style: textTheme.bodySmall),
                    onTap: () {
                      Navigator.pop(context);
                      controller.animateToPage(
                        3,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.fastOutSlowIn,
                      );
                    },
                  ),

                  ListTile(
                    leading: Icon(
                      Icons.contact_phone,
                      color: colorScheme.primary,
                      size: 20.r,
                    ),
                    title: Text('Contact Me', style: textTheme.bodySmall),
                    onTap: () {
                      Navigator.pop(context);
                      controller.animateToPage(
                        4,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.fastOutSlowIn,
                      );
                    },
                  ),

                  ListTile(
                    leading: Icon(
                      Icons.brightness_4_outlined,
                      color: colorScheme.primary,
                      size: 20.r,
                    ),
                    title: Text('Theme', style: textTheme.bodySmall),
                    trailing: Switch(
                      trackColor: WidgetStateProperty.all(Colors.white30),
                      activeThumbColor: Colors.green.withValues(alpha: 0.4),
                      activeThumbImage: const AssetImage(
                        'assets/images/night.png',
                      ),
                      inactiveThumbImage: const AssetImage(
                        'assets/images/light.png',
                      ),
                      value: Get.isDarkMode,
                      inactiveTrackColor: Colors.black,
                      activeTrackColor: Colors.white,
                      onChanged: (_) {
                        homeController.setThemeMode(
                          homeController.themeMode == .light ? .dark : .light,
                        );
                      },
                    ),
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ),

          body: Stack(
            children: [
              SparkleSpiderAnimation(),
              CenteredView(
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
                          HomePageMobileView(),
                          AboutMeMobilePageView(),
                          MySkillsMobilePageView(),
                          ProfissionalExperiencePageView(),
                          ContactDetailsMobilePageView(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          floatingActionButton: homeController.pageIndex > 2
              ? Padding(
                  padding: EdgeInsetsDirectional.only(bottom: 50.h, end: 20.w),
                  child: Material(
                    borderRadius: BorderRadius.circular(16.r),
                    clipBehavior: Clip.antiAlias,
                    color: colorScheme.primaryContainer,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(16.r),
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
                          color: colorScheme.primaryContainer,
                          borderRadius: BorderRadius.circular(16.r),
                        ),
                        child: Icon(
                          Icons.arrow_upward_rounded,
                          color: colorScheme.onPrimaryContainer,
                        ),
                      ),
                    ),
                  ),
                )
              : null,

          floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,

          bottomNavigationBar: homeController.pageIndex == 4
              ? AnimatedContainer(
                  duration: const Duration(milliseconds: 1000),
                  child: BottomBarWidget(
                    homeController: homeController,
                    bottomNavCallback: (int index) {
                      switch (index) {
                        case 0:
                          controller.animateToPage(
                            0,
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.fastOutSlowIn,
                          );
                          break;

                        case 1:
                          controller.animateToPage(
                            1,
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.fastOutSlowIn,
                          );
                          break;

                        case 2:
                          controller.animateToPage(
                            2,
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.fastOutSlowIn,
                          );
                          break;

                        default:
                          controller.animateToPage(
                            0,
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.fastOutSlowIn,
                          );
                      }
                    },
                  ),
                )
              : const SizedBox.shrink(),
        );
      },
    );
  }
}
