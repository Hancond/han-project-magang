import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/routes/app_pages.dart';
import 'package:get/get.dart';

import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  // const RegisterView({Key? key}) : super(key: key);
  final RegisterController controller = Get.put(RegisterController());

  @override
  Widget build(BuildContext context) {
    final RegisterController controller = Get.find<RegisterController>();
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            width: 390,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 150,
                  width: 150,
                ),
                Image.asset('assets/Logo.png'),
                SizedBox(height: 40.0),
                Container(
                  width: 390.0,
                  height: 500.0,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 10,
                        offset: Offset(0, 3),
                      ),
                    ],
                    color: Color.fromRGBO(242, 248, 255, 1),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 5.0),
                      Text(
                        'Register',
                        style: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(45, 109, 154, 1),
                        ),
                      ),
                      SizedBox(height: 5.0),
                      Container(
                        width: 350,
                        child: TextField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.person_pin,
                                color: Color.fromRGBO(45, 109, 154, 1)),
                            labelText: 'Full Name',
                          ),
                        ),
                      ),
                      SizedBox(height: 5.0),
                      Container(
                        width: 350,
                        child: TextField(
                          onChanged: (value) {
                            controller.usernameController.value;
                          },
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.person_pin,
                                color: Color.fromRGBO(45, 109, 154, 1)),
                            labelText: 'Username',
                          ),
                        ),
                      ),
                      Container(
                        width: 350,
                        child: Column(
                          children: [
                            TextField(
                              onChanged: (value) {
                                controller.confirmPasswordController.value;
                              },
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.lock,
                                    color: Color.fromRGBO(45, 109, 154, 1)),
                                suffixIcon: IconButton(
                                  icon: Icon(
                                    controller.passwordVisible.value
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                    color: Color.fromRGBO(45, 109, 154, 1),
                                  ),
                                  onPressed:
                                      controller.togglePasswordVisibility,
                                ),
                                labelText: 'Password',
                              ),
                            ),
                            SizedBox(height: 10.0),
                            TextField(
                              onChanged: (value) {
                                controller.passwordVisible.value;
                              },
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.lock,
                                    color: Color.fromRGBO(45, 109, 154, 1)),
                                suffixIcon: IconButton(
                                  icon: Icon(
                                    controller.isObscureConfirmPassword.value
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                    color: Color.fromRGBO(45, 109, 154, 1),
                                  ),
                                  onPressed: controller
                                      .toggleConfirmPasswordVisibility,
                                ),
                                labelText: 'Confirm Password',
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10.0),
                      ElevatedButton(
                        onPressed: () async {
                          controller.handleRegistration();
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromRGBO(45, 109, 154, 1),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          padding: EdgeInsets.symmetric(
                              vertical: 13, horizontal: 130),
                        ),
                        child: Text(
                          'Register',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Already have an account?",
                            style: TextStyle(
                              color: Color.fromRGBO(45, 109, 154, 1),
                              fontSize: 16,
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              // Navigate back to the login page using Get.toNamed
                              Get.toNamed(Routes.LOGIN);
                            },
                            child: Text(
                              "Login Here!",
                              style: TextStyle(
                                color: Color.fromRGBO(45, 109, 154, 1),
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
