
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  ThemeMode themeMode = ThemeMode.system;

  bool isLoading = false;

  setLoading(bool isLoading) => isLoading = isLoading;

  int pageIndex = 0;

  setPageIndex(int index) {
    pageIndex = index;
    update();
  }

  @override
  onInit() {
    super.onInit();
    setThemeMode(themeMode);
  }

  Future<void> setThemeMode(ThemeMode theme) async {
    Get.changeThemeMode(theme);
    themeMode = theme;

    update();
  }
}
