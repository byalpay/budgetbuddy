import 'package:budgetbuddy/view/auth/forget/view/forgetPage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../../../../components/customLoginField.dart';
import '../../../../components/authButton.dart';
import '../../../../controllers/signIn.dart';
import '../../register/view/registerPage.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  void signInCallback() {
    signIn(_emailController.text.trim(), _passwordController.text.trim());
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Hoş Geldiniz!",
                // AppLocalizations.of(context)!.helloWorld,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 30),
              LoginTextField(
                hintText: "Kullanıcı Adı",
                obscureText: false,
                controller: _emailController,
              ),
              SizedBox(height: 10),
              LoginTextField(
                hintText: "Şifre",
                obscureText: true,
                controller: _passwordController,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ForgetPage()),
                      );
                    },
                    child: Text(
                      "Şifremi unuttum",
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              LoginButton(
                onPressed: () {
                  signInCallback();
                },
                text: 'Giriş Yap',
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Üye değil misiniz?  ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => RegisterPage()),
                      );
                    },
                    child: Text(
                      "Hemen Kaydol!",
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ],
              ),
              // SizedBox(height: 30),
              /* Row(
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    "Ya da Google ile Devam Et",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ), */
            ],
          ),
    );
  }
}
