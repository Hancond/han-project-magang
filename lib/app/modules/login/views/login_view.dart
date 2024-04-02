import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/routes/app_pages.dart';

import 'package:get/get.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  final LoginController controller = Get.put(LoginController());
  // LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 150.0),
              Image.asset('assets/Logo.png'),
              SizedBox(height: 30),
              Container(
                height: 500,
                width: 390,
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
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(45, 109, 154, 1),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 350,
                      child: TextField(
                        controller: controller.usernameController,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person_pin,
                              color: Color.fromRGBO(45, 109, 154, 1)),
                          labelText: 'Username',
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 350,
                      child: TextField(
                        controller: controller.passwordController,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock,
                              color: Color.fromRGBO(45, 109, 154, 1)),
                          suffixIcon: IconButton(
                            icon: Icon(
                                controller.passwordVisible.value
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: Color.fromRGBO(45, 109, 154, 1)),
                            onPressed: controller.togglePasswordVisibility,
                          ),
                          labelText: 'Password',
                        ),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: TextButton(
                        onPressed: () {
                          print("Forgot Password clicked");
                        },
                        child: Text(
                          "Forgot Password?",
                          style: TextStyle(
                            color: Color.fromRGBO(45, 109, 154, 1),
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    ElevatedButton(
                      onPressed: () async {
                        await controller.login();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromRGBO(45, 109, 154, 1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        padding: EdgeInsets.symmetric(
                          vertical: 16.0,
                          horizontal: 150.0,
                        ),
                      ),
                      child: Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: 16.0),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Didn't have an account?",
                          style: TextStyle(
                            color: Color.fromRGBO(45, 109, 154, 1),
                            fontSize: 16.0,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            // Navigate to the RegisterPage when "Register Here!" is clicked
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (context) => RegisterPage()),
                            // );
                            Get.toNamed(Routes.REGISTER);
                          },
                          child: Text(
                            "Register Here!",
                            style: TextStyle(
                              color: Color.fromRGBO(45, 109, 154, 1),
                              fontSize: 16.0,
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
    );
  }
}
