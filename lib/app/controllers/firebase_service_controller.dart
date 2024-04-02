// firebase_service_controller.dart
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseServiceController {
  static Future<void> signInWithEmailAndPassword(
      String email, String password) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      // Handle specific authentication exceptions
      throw e;
    } catch (e) {
      // Handle generic exceptions
      throw e;
    }
  }
}