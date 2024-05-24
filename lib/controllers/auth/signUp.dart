import 'package:firebase_auth/firebase_auth.dart';

import '../connection/connection.dart';

Future<void> signUp(String email, String password, String userName) async {
  try {
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
    String userUid = FirebaseAuth.instance.currentUser!.uid;

    await db.collection('users').doc(userUid).set({
      'email': email,
      'password' : password,
      'userName' : userName
    });
  } catch (e) {
    print("Kayıt Olma Hatası: $e");
  }
}
