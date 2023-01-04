import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/state_init_controller.dart';

class StateInitView extends GetView<StateInitController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StateInitView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'StateInitView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
