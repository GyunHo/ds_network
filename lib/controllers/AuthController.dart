import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthController extends GetxController {
  FirebaseAuth _auth = FirebaseAuth.instance;

  Rx<User?> get streamAuthStatus => _auth.currentUser.obs;

  @override
  void onInit() {

    super.onInit();
  }
}
