import 'package:ds_network/controllers/authController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AuthController controller = Get.find();
    return Scaffold(
      appBar: AppBar(
        title: Text('로그인 스크린'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            TextFormField(
              controller: controller.emailController,
            ),
            TextFormField(
              controller: controller.passwordController,
            ),
            OutlinedButton(
                onPressed: () {
                  controller.signIn(controller.emailController.text,
                      controller.passwordController.text);
                },
                child: Text('로그인!')),
          ],
        ),
      ),
    );
  }
}
