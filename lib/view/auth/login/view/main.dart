import 'package:budgetbuddy/theme/theme.dart';
import 'package:budgetbuddy/components/loginButton.dart';
import 'package:flutter/material.dart';
import 'package:budgetbuddy/components/customLoginField.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:budgetbuddy/language/l10n.dart';
import '../../../settings/service/themeSwitch.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      theme: darkModeEnabled ? darkTheme : lightTheme,
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              AppLocalizations.of(context)!.helloWorld,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 30),
            LoginTextField(
                hintText: "Kullanıcı Adı",
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
                Expanded(
                  child: Divider(
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
