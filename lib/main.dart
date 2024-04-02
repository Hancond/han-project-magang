import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/controllers/auth_controller.dart';
import 'package:flutter_application_1/firebase_options.dart';
import 'package:get/get.dart';
import 'app/routes/app_pages.dart';

late final FirebaseApp app;
late final FirebaseAuth main_auth;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  app = await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform 
    // FirebaseOptions(
    //   apiKey: "AIzaSyD14uy1FBa9LURdx8EkSM25EPg7xEcdJb4",
    //   appId: "252805092105:ios:5441b93c124f4daa72b9d8",
    //   messagingSenderId: "252805092105",
    //   projectId: "magang-godseo",
    // ),
  );
  // main_auth = FirebaseAuth.instanceFor(app: app);

  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
 final authC = Get.put(AuthController(), permanent: true);
  build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context,  snapshot) {
        print(snapshot);
        if (snapshot.connectionState == ConnectionState.active) {
          print(snapshot.data);

          return GetMaterialApp(
            title: 'Application',
            initialRoute: snapshot.data != null && snapshot.data!.emailVerified == true
                ? Routes.HOME
                : Routes.LOGIN,
            getPages: AppPages.routes,
          );
        }
        return Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        );
      },
    );
  }
}
