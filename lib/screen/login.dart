import 'package:ds_network/controllers/authController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AuthController controller = Get.find();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        title: Text('사원 인증'),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: TextFormField(
                      controller: controller.emailController,
                    ),
                  ),
                  TextFormField(
                    controller: controller.passwordController,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Column(
              children: [
                OutlinedButton(
                    onPressed: () {
                      controller.signIn(controller.emailController.text,
                          controller.passwordController.text);
                    },
                    child: Text(
                      '로그인',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                      ),
                    )),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('or'),
                ),
                OutlinedButton(
                    onPressed: () {},
                    child: Text(
                      '사원등록',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                      ),
                    ))
              ],
            ),
            flex: 4,
          )
        ],
      ),
    );
  }
}
