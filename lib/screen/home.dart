import 'package:ds_network/controllers/authController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AuthController controller = Get.find();
    return Scaffold(
      body: Center(
        child: OutlinedButton(
          onPressed: () {
            controller.signOut();
          },
          child: Text('아웃'),
        ),
      ),
      appBar: AppBar(
        title: Text('홈스크린'),
      ),
    );
  }
}
