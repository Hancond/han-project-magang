
import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_application_1/app/controllers/firebase_service_controller.dart';

class RegisterController extends GetxController {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  var usernameController = TextEditingController();
  var passwordController = TextEditingController();
  var confirmPasswordController = TextEditingController(); // Add a controller for confirm password
  var passwordVisible = false.obs;
  var isObscureConfirmPassword = true.obs; // Add observable for confirm password visibility

  void togglePasswordVisibility() {
    passwordVisible.toggle();
  }

  void toggleConfirmPasswordVisibility() {
    isObscureConfirmPassword.toggle();
  }

  void handleRegistration() async {
    if (_validateInputs()) {
      try {
        UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
          email: usernameController.text.trim(), // Use email as username
          password: passwordController.text,
        );

        // Additional logic if needed (e.g., storing user data in Firebase Firestore)

        // Print the user ID for verification (optional)
        print('User ID: ${userCredential.user?.uid}');

        // Clear the input fields after successful registration
        usernameController.clear();
        passwordController.clear();
        confirmPasswordController.clear();

        // Navigate to another screen or perform any additional actions
        // For example, redirect to the login screen
        Get.toNamed(Routes.HOME);
      } catch (e) {
        // Handle registration errors (e.g., display an error message)
        print('Error during registration: $e');
      }
    }
  }

  bool _validateInputs() {
    if (usernameController.text.isEmpty ||
        passwordController.text.isEmpty ||
        confirmPasswordController.text.isEmpty) {
      // Display an error message or perform any necessary actions for incomplete fields
      print('Please fill in all fields');
      return false;
    }

    if (passwordController.text != confirmPasswordController.text) {
      // Display an error message or perform any necessary actions for password mismatch
      print('Passwords do not match');
      return false;
    }

    return true;
  }
}
