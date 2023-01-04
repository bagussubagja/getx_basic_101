import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_basic_101/app/modules/auth_login/controllers/authentication_login_controller.dart';
import 'package:getx_basic_101/app/routes/app_pages.dart';

import '../controllers/auth_login_controller.dart';

class AuthLoginView extends GetView<AuthLoginController> {
  final authController = Get.find<AuthenticationLoginController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AuthLoginView'),
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
                authController.loginWithEmail();
              },
              child: Text('Login'),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Dont have any account?'),
                TextButton(onPressed: () {
                  Get.offAllNamed(Routes.AUTH_REGISTER);
                }, child: Text('Register Now'))
              ],
            )
          ],
        ),
      ),
    );
  }
}
