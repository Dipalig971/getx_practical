import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemeController extends GetxController{
  RxBool isDark = false.obs;

  void changeTheme(){
    isDark.value = !isDark.value;

    Get.changeTheme(isDark.value? ThemeData.dark() : ThemeData.light());
  }
}