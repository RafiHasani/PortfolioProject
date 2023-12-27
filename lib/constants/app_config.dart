import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:portfolioproject/constants/colors.dart';
import 'package:portfolioproject/screens/view_container_main.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';

class AppConfig {
  static final AppConfig _singleton = AppConfig._internal();

  factory AppConfig() {
    return _singleton;
  }

  AppConfig._internal();

  static AppColor color = AppColor();

  Future<void> launch(String url, {bool isNewTab = true}) async {
    await launchUrl(
      Uri.parse(url),
      webOnlyWindowName: isNewTab ? '_blank' : '_self',
    );
  }

  getDeviceScreenType(BuildContext context) {
    DeviceScreenType deviceType = getDeviceType(MediaQuery.of(context).size);
    var type = 0;
    switch (deviceType) {
      case DeviceScreenType.desktop:
        type = 0;
        break;
      case DeviceScreenType.tablet:
        type = 0;
        break;
      case DeviceScreenType.mobile:
        type = 1;
        break;
      default:
        type = 0;
    }
    return type;
  }

  static String routeHomeScreenPage = '/Home';
  static String routePdfViewPage = '/Resume';

  List<GetPage> routeMap = [
    GetPage(
      name: routeHomeScreenPage,
      page: () => const HomePageScreen(),
    ),
  ];
}
