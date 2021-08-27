import 'package:ds_network/controllers/authController.dart';
import 'package:ds_network/screen/home.dart';
import 'package:ds_network/screen/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(InitScreen());
}

class InitScreen extends StatelessWidget {
  const InitScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(AuthController());
    return StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (BuildContext context, AsyncSnapshot user) {
          if (user.hasData) {
            return GetMaterialApp(
              theme: ThemeData.dark(),
              home: HomeScreen(),
            );
          }
          if (!user.hasData) {
            return GetMaterialApp(
              home: LoginScreen(),
              theme: ThemeData.dark(),
            );
          } else {
            return Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
        });
  }
}
