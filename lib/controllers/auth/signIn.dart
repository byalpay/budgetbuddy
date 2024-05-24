import 'package:firebase_auth/firebase_auth.dart';

Future<void> signIn(String email, String password) async {
  try {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  } catch (e) {
    print("Giriş Hatası: $e");
  }
}
