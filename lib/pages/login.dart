// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:flutter_application_1/pages/dashboard.dart';
// import 'package:flutter_application_1/pages/register.dart';
// import 'package:flutter_application_1/pages/home.dart';


// class LoginPage extends StatefulWidget {
//   @override
//   _LoginPageState createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
//   bool _isObscure = true;

//   void _togglePasswordVisibility() {
//     setState(() {
//       _isObscure = !_isObscure;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Container(
//           height: MediaQuery.of(context).size.height,
//           width: MediaQuery.of(context).size.width,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               SizedBox(height: 150.0),
//               Image.asset('assets/Logo.png'),
//               SizedBox(height: 30),
//               Container(
//                 height: 500,
//                 width: 390,
//                 decoration: BoxDecoration(
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.grey.withOpacity(0.5),
//                       spreadRadius: 2,
//                       blurRadius: 10,
//                       offset: Offset(0, 3),
//                     ),
//                   ],
//                   color: Color.fromRGBO(242, 248, 255, 1),
//                   borderRadius: BorderRadius.circular(16),
//                 ),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     SizedBox(
//                       height: 30,
//                     ),
//                     Text(
//                       'Login',
//                       style: TextStyle(
//                         fontSize: 36,
//                         fontWeight: FontWeight.bold,
//                         color: Color.fromRGBO(45, 109, 154, 1),
//                       ),
//                     ),
//                     SizedBox(
//                       height: 20,
//                     ),
//                     Container(
//                       width: 350,
//                       child: TextField(
//                         decoration: InputDecoration(
//                           prefixIcon: Icon(Icons.person_pin,
//                               color: Color.fromRGBO(45, 109, 154, 1)),
//                           labelText: 'Username',
//                         ),
//                       ),
//                     ),
//                     SizedBox(
//                       height: 20,
//                     ),
//                     Container(
//                       width: 350,
//                       child: TextField(
//                         obscureText: _isObscure,
//                         decoration: InputDecoration(
//                           prefixIcon: Icon(Icons.lock,
//                               color: Color.fromRGBO(45, 109, 154, 1)),
//                           suffixIcon: IconButton(
//                             icon: Icon(
//                                 _isObscure
//                                     ? Icons.visibility
//                                     : Icons.visibility_off,
//                                 color: Color.fromRGBO(45, 109, 154, 1)),
//                             onPressed: _togglePasswordVisibility,
//                           ),
//                           labelText: 'Password',
//                         ),
//                       ),
//                     ),
//                     SizedBox(height: 10.0),
//                     Align(
//                       alignment: Alignment.centerLeft,
//                       child: TextButton(
//                         onPressed: () {
//                           print("Forgot Password clicked");
//                         },
//                         child: Text(
//                           "Forgot Password?",
//                           style: TextStyle(
//                             color: Color.fromRGBO(45, 109, 154, 1),
//                             fontSize: 16.0,
//                           ),
//                         ),
//                       ),
//                     ),
//                     SizedBox(height: 15),
//                     ElevatedButton(
//                       onPressed: () {
//                         // Add logic for handling login here
//                         Navigator.pushReplacement(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) => DashboardPage()),
//                         );
//                       },
//                       style: ElevatedButton.styleFrom(
//                        backgroundColor: Color.fromRGBO(45, 109, 154, 1),
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(30),
//                         ),
//                         padding: EdgeInsets.symmetric(
//                             vertical: 16.0, horizontal: 150.0),
//                       ),
//                       child: Text(
//                         'Login',
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 20,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ),
//                     SizedBox(height: 16.0),
//                     Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Text(
//                           "Didn't have an account?",
//                           style: TextStyle(
//                             color: Color.fromRGBO(45, 109, 154, 1),
//                             fontSize: 16.0,
//                           ),
//                         ),
//                         TextButton(
//                           onPressed: () {
//                             // Navigate to the RegisterPage when "Register Here!" is clicked
//                             Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                   builder: (context) => RegisterPage()),
//                             );
//                           },
//                           child: Text(
//                             "Register Here!",
//                             style: TextStyle(
//                               color: Color.fromRGBO(45, 109, 154, 1),
//                               fontSize: 16.0,
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
