import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/routes/app_pages.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            color: Colors.white, // Warna background pada bagian home
            child: Column(
              children: [
                const SizedBox(height: 50),
                ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 30),
                  title: const Text(
                    'Hello Johnney!',
                    style: TextStyle(color: Colors.blue),
                  ),
                  subtitle: Text(
                    'This is your day 75 internship here',
                    style: TextStyle(color: Colors.grey),
                  ),
                  trailing: Icon(
                    Icons.account_circle,
                    size: 60,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.blue, // Warna background pada bagian dashboard
            child: Column(
              children: [
                // Isi sesuai dengan tampilan Dashboard
              ],
            ),
          ),
          Container(
            color: Colors.blue, // Warna background pada bagian login
            child: Column(
              children: [
                // Isi sesuai dengan tampilan Login
              ],
            ),
          ),
          Container(
            color: Colors.blue, // Warna background pada bagian register
            child: Column(
              children: [
                // Isi sesuai dengan tampilan Register
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromRGBO(45, 109, 154, 1),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Users',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.login),
            label: 'Login',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_add),
            label: 'Register',
          ),
        ],
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.blue,
        unselectedIconTheme: IconThemeData(color: Colors.blue),
        onTap: (int index) {
          if (index == 0) {
            // Get.toNamed(Routes.HOME); // Optional, since it's already on the home page
          } else if (index == 1) {
            Get.toNamed(Routes.LOGIN);
          } else if (index == 2) {
            Get.toNamed(Routes.LOGIN);
          } else if (index == 3) {
            Get.toNamed(Routes.REGISTER);
          }
        },
      ),
    );
  }
}
