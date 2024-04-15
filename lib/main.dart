import 'package:budgetbuddy/service/themeSwitch.dart';
import 'package:budgetbuddy/theme/theme.dart';
import 'package:budgetbuddy/widgets/loginButton.dart';
import 'package:flutter/material.dart';
import 'package:budgetbuddy/widgets/textField.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: darkModeEnabled ? darkTheme : lightTheme,
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                "Hoşgeldiniz",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 30),
            LoginTextField(
                hintText: 'Kullanıcı Adı',
                obscureText: false
            ),
            SizedBox(height: 10),
            LoginTextField(
                hintText: "Şifre",
                obscureText: true
            ),
            SizedBox(height: 30),
            LoginButton(),
            Row(
              children: [
                Expanded(child: Divider(
                  thickness: 0.5,
                  color : Colors.grey,
                ),
                ),
                Text(
                    "Ya da Google ile Devam Et",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Expanded(
                    child:
                    Divider(
                  thickness: 0.5,
                  color: Colors.grey,
                ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
