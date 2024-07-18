import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practical/screen/counter_app/view/navigarion/second_screen.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('First Page')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.to(SecondPage(), transition: Transition.upToDown);
          },
          child: const Text('Go to Second Page'),
        ),
      ),
    );
  }
}


