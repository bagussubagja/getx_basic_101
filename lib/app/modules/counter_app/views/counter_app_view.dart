import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/counter_app_controller.dart';

class CounterAppView extends GetView<CounterAppController> {
  final controller = Get.put(CounterAppController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CounterAppView'),
        centerTitle: true,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {
                controller.decrement();
              },
              icon: Icon(Icons.remove),
            ),
            Obx(() {
              return Text(
                controller.count.toString(),
              );
            }),
            IconButton(
              onPressed: () {
                controller.increment();
              },
              icon: Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
