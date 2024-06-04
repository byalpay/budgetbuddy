import 'package:budgetbuddy/view/auth/login/view/loginPage.dart';
import 'package:budgetbuddy/view/home/main-page/view/homePage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final userId = FirebaseAuth.instance.currentUser?.uid ?? '';
            return HomePage(userId: userId);
          } else {
            return LoginPage();
          }
        },
      ),
    );
  }
}
