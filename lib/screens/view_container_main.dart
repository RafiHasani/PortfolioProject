import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolioproject/controllers/home_screen_controller.dart';
import 'package:portfolioproject/screens/mobile_view/mobile_container.dart';
import 'package:portfolioproject/screens/web_view/web_container.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (controller) {
      return ScreenTypeLayout.builder(
        mobile: (context) {
          return HomePageMobile();
        },
        tablet: (context) {
          return HomePageWeb();
        },
        desktop: (context) {
          return HomePageWeb();
        },
      );
    });
  }
}
