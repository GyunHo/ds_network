import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthController extends GetxController {

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  FirebaseAuth _auth = FirebaseAuth.instance;

  createUser(String email, String password) {
    _auth.createUserWithEmailAndPassword(email: email, password: password);
  }

  signIn(String email, String password) {
    _auth.signInWithEmailAndPassword(email: email, password: password);
  }

  signOut() {
    _auth.signOut();
  }
}
