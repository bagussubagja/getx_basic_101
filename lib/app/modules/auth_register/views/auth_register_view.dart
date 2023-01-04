import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_basic_101/app/modules/auth_register/controllers/authentication_register_controller.dart';

import '../../../routes/app_pages.dart';
import '../controllers/auth_register_controller.dart';

class AuthRegisterView extends GetView<AuthRegisterController> {
  final authRegisterController = Get.find<AuthenticationRegisterController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AuthRegisterView'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            TextFormField(
              controller: controller.emailController,
              decoration: InputDecoration(hintText: "Email Address"),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: controller.passwordController,
              decoration: InputDecoration(hintText: "Password"),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                authRegisterController.registerWithEmail();
              },
              child: Text('Register'),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Already have an Account?'),
                TextButton(onPressed: () {
                  Get.offAllNamed(Routes.AUTH_LOGIN);
                }, child: Text('Login Now!'))
              ],
            )
          ],
        ),
      ),
    );
  }
}
