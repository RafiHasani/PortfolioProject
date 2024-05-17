

import 'package:flutter/material.dart';

class AppColor{
  
   static final AppColor _singleton = AppColor._internal();

  factory AppColor() {
    return _singleton;
  }

  AppColor._internal();



  Color primary=const Color(0xFF3ABCB5);
  Color dividerColor = const Color.fromARGB(135, 255, 255, 255);
}