import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:portfolioproject/screens/web_view/views/my_skills_page_web.dart';
import 'package:portfolioproject/widgets/sparkals_animation_container.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../controllers/home_screen_controller.dart';
import '../../widgets/bottombar.dart';
import '../../widgets/navbar.dart';
import 'views/aboutme_page_web.dart';
import 'views/contactus_page_web.dart';
import 'views/home_page_web.dart';
import 'views/profissional_experience_page_web.dart';

class HomePageWeb extends StatelessWidget {
  HomePageWeb({super.key});

  final PageController controller =
      PageController(viewportFraction: 0.8, initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (homeController) {
      return Scaffold(
        appBar: homeController.pageIndex == 4
            ? null
            : PreferredSize(
                preferredSize: Size.fromHeight(0.1.sh),
                child: NavBarWidget(
                  menuCallback: (int index) {
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
                  homeController: homeController,
                ),
              ),
        body: Stack(children: [
          SparkleSpiderAnimation(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 32.w),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SmoothPageIndicator(
                  controller: controller,
                  count: 5,
                  axisDirection: Axis.vertical,
                  effect: const ExpandingDotsEffect(),
                ),
                16.horizontalSpace,
                SizedBox(
                  width: 0.7.sw,
                  child: PageView(
                    onPageChanged: (index) {
                      homeController.setPageIndex(index);
                    },
                    physics: const ClampingScrollPhysics(),
                    controller: controller,
                    scrollDirection: Axis.vertical,
                    children: [
                      HomePageView(homeController: homeController),
                      AboutMePageView(homeController: homeController),
                      MySkillPageView(homeController: homeController),
                      ProfissionalExperiencePageView(
                          homeController: homeController),
                      ContactDetailsPageView(homeController: homeController),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ]),
        floatingActionButton: homeController.pageIndex > 2
            ? Padding(
                padding: EdgeInsetsDirectional.only(
                  bottom: 20.h,
                  end: 32.w,
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
                homeController: homeController,
              )
            : const SizedBox.shrink(),
      );
    });
  }
}
