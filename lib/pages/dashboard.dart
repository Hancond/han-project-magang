// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:flutter_application_1/pages/login.dart';
// import 'package:flutter_application_1/pages/register.dart';
// import 'package:flutter_application_1/pages/home.dart';


// class DashboardPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ListView(
//         padding: EdgeInsets.zero,
//         children: [
//           Container(
//             child: Column(
//               children: [
//                 const SizedBox(height: 50),
//                 ListTile(
//                   contentPadding: EdgeInsets.symmetric(horizontal: 30),
//                   title: const Text(
//                     'Hello Johnney!',
//                     style: TextStyle(color: Colors.blue),
//                   ),
//                   subtitle: Text(
//                     'This is your day 75 internship here',
//                     style: TextStyle(color: Colors.grey),
//                   ),
//                   trailing: Icon(
//                     Icons.account_circle, // You can replace 'Icons.person' with any desired icon
//                     size: 60,
//                     color: Colors.blue,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         backgroundColor: Color.fromRGBO(45, 109, 154, 1),
//         items: const [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.dashboard, color: Colors.white),
//             label: 'dashboard',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.login, color: Colors.white),
//             label: 'login',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person_add, color: Colors.white),
//             label: 'register',
//           ),
//         ],
//         selectedItemColor: Colors.white,
//         unselectedItemColor: Colors.white,
//         onTap: (int index) {
//           if (index == 0) {
//             // Do nothing or handle dashboard selection if needed
//               Navigator.pushReplacement(
//               context,
//               MaterialPageRoute(builder: (context) => HomePage()),
//             );
//           } else if (index == 1) {
//             Navigator.pushReplacement(
//               context,
//               MaterialPageRoute(builder: (context) => LoginPage()),
//             );
//           }
//           else if (index == 2) {
//             Navigator.pushReplacement(
//               context,
//               MaterialPageRoute(builder: (context) => RegisterPage()),
//             );
//           }
//         },
//       ),
//     );
//   }
// }
