// import 'package:flutter/material.dart';
// import 'package:flutter_application_1/pages/login.dart';
// import 'package:flutter_application_1/pages/dashboard.dart';
// import 'package:flutter_application_1/pages/register.dart';
// import 'package:get/get.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       title: 'Judul Aplikasi Anda',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       // Tentukan rute awal jika diperlukan
//       initialRoute: '/',
//       // Tentukan rute untuk aplikasi Anda
//       getPages: [
//         GetPage(name: '/', page: () => HomePage()), // Home Page
//         GetPage(name: '/LoginPage', page: () => LoginPage()),
//         GetPage(name: '/registerPage', page: () => RegisterPage()),
//       ],
//     );
//   }
// }

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Home Page'),
//       ),
//       body: Center(
//         child: Text(
//           'Welcome to the Home Page!',
//           style: TextStyle(fontSize: 24),
//         ),
//       ),
//     );
//   }
// }
