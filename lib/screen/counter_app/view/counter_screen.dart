import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practical/screen/counter_app/controller/counter_controller.dart';

class CounterScreen extends StatelessWidget {
  final CounterController counterController = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text(
          'Counter App',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
          child: Obx(() => Text(
                'Count : ${counterController.count}',
                style: const TextStyle(fontSize: 25),
              ))),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal,
        onPressed: () {
          counterController.incrementValue();
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
