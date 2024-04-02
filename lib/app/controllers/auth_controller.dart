import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_application_1/app/routes/app_pages.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
 FirebaseAuth auth = FirebaseAuth.instance;
 Stream<User?> get streamAuthStatus => auth.authStateChanges();
  
  Future<void> login(String email, String password) async {
    try {
      UserCredential myUser = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      if (myUser.user != null && myUser.user!.emailVerified) {
        Get.offAllNamed(Routes.HOME);
      } else {
        Get.defaultDialog(
          title: "Verification email",
          middleText: 
          "Kamu perlu verifikasi email terlebih dahulu. Apakah kamu ingin dikirimkan verifikasi ulang ?",
          onConfirm: () async {
            await myUser.user!.sendEmailVerification();
            Get.back();
          },
          textConfirm: "Kirim Ulang",
          textCancel: "Kembali",
        );
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
        Get.defaultDialog(
          title: "Terjadi Kesalahan",
          middleText: "No user found for that email.",
        );
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
        Get.defaultDialog(
          title: "Terjadi Kesalahan",
          middleText: "Wrong password provided for that user1.",
        );
      } else {
        Get.defaultDialog(
          title: "Terjadi kesalahan",
          middleText: "Email atau password yang anda masukkan mungkin salah",
        );
      }
    } catch(e){
        Get.defaultDialog(
          title: "Terjadi Kesalahan",
          middleText: "Tidak dapat login dengan akun ini.",
        );
    }
  }

  }
