import 'package:firebase_auth/firebase_auth.dart';

Future passwordReset(String email) async {
  try{
    await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
  } on FirebaseAuthException catch(e){
    print(e);
  }
}
