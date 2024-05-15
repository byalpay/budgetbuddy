import 'package:budgetbuddy/theme/theme.dart';
import 'package:budgetbuddy/view/auth/login/view/loginPage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'view/settings/service/themeSwitch.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      theme: darkModeEnabled ? lightTheme : darkTheme,
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: const LoginPage(),
    );
  }
}
