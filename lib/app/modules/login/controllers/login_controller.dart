// login_controller.dart
import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_application_1/app/controllers/firebase_service_controller.dart';



import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_application_1/app/routes/app_pages.dart';
import 'package:flutter_application_1/app/modules/register/controllers/register_controller.dart'; // Import your RegisterController

class LoginController extends GetxController {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  var usernameController = TextEditingController();
  var passwordController = TextEditingController();
  var passwordVisible = false.obs;
  var isLoggedIn =false.obs;

  void togglePasswordVisibility() {
    passwordVisible.toggle();
  }

  Future<void> login() async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: usernameController.text,
        password: passwordController.text,
      );

      User? user = userCredential.user;
      if (user != null) {
        // Login successful
        Get.snackbar(
          'Login Successful',
          'Welcome Back!',
          backgroundColor: Color.fromRGBO(211, 211, 211, 1),
        );

        // Additional logic or navigation can be added here
        Get.offNamed(Routes.HOME);

      } else {
        // Handle the case where the user object is null
        Get.snackbar(
          'Login Error',
          'An unexpected error occurred. Please try again later.',
          backgroundColor: Colors.red,
          colorText: Colors.white,
        );
      }
    } on FirebaseAuthException catch (e) {
      // Handle specific authentication exceptions
      if (e.code == 'user-not-found' || e.code == 'wrong-password') {
        Get.snackbar(
          'Login Error',
          'Keliru iku jenengmu gak ngono passwordmu',
          backgroundColor: Colors.red,
          colorText: Colors.white,
        );
      } else {
        Get.snackbar(
          'Login Error',
          'Lebokno jenengmu ambek password mu seng genah',
          backgroundColor: Colors.red,
          colorText: Colors.white,
        );
      }
    } catch (e) {
      // Handle generic exceptions
      print(e.toString());
    }
  }
}
