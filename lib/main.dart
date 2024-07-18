import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practical/screen/counter_app/controller/theme_controller.dart';
import 'package:getx_practical/screen/counter_app/view/counter_screen.dart';
import 'package:getx_practical/screen/counter_app/view/navigarion/navigator_screen.dart';
import 'package:getx_practical/screen/counter_app/view/navigarion/second_screen.dart';
import 'package:getx_practical/screen/counter_app/view/theme_screen.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: [
        GetPage(name: '/', page: () => FirstPage(),),
        GetPage(name: '/second', page: () => SecondPage()),
      ],
    );
    // final ThemeController themeController = Get.put(ThemeController());
    // return  Obx(
    //   () {
    //     return  GetMaterialApp(
    //       debugShowCheckedModeBanner: false,
    //       theme: themeController.isDark.value? ThemeData.dark() : ThemeData.light(),
    //       home: const ThemeScreen(),
    //     );
    //   },
    // );
  }
}
