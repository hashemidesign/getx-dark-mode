import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppController extends GetxController {
  RxInt count = 0.obs;
  RxBool isDark = false.obs;

  increase() {
    count++;
  }

  void changeDark() {
    isDark.value = !isDark.value;
  }

  void changeTheme(bool state) {
    if(state) {
      Get.changeTheme(ThemeData.dark());
    } else {
      Get.changeTheme(ThemeData.light());
    }
  }
}