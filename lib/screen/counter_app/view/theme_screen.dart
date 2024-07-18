import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practical/screen/counter_app/controller/theme_controller.dart';

class ThemeScreen extends StatelessWidget {
  const ThemeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeController themeController = Get.put(ThemeController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme App'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(() =>  Text(themeController.isDark.value?'Dark Theme ' : 'Light Theme',style: TextStyle(fontSize: 40),)),
          Center(
            child: Obx(
              () => Switch(value:themeController.isDark.value ,onChanged: (value) {
                themeController.changeTheme();
              },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
