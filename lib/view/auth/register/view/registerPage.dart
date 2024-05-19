import 'package:budgetbuddy/components/customAppBar.dart';
import 'package:budgetbuddy/controllers/auth/signUp.dart';
import 'package:budgetbuddy/view/auth/login/view/loginPage.dart';
import 'package:flutter/material.dart';
import '../../../../components/customLoginField.dart';
import '../../../../components/authButton.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

final _emailController = TextEditingController();
final _passwordController = TextEditingController();
final _confirmpasswordController = TextEditingController();

passwordConfirmed() {
  if(_passwordController.text.trim()== _confirmpasswordController.text.trim()) {
    return signUpCallback();
  }
  else {
    // buraya bir alert dialog döndürebiliriz...
    return false;
  }
}

void signUpCallback() {
  signUp(_emailController.text.trim(), _passwordController.text.trim());
}

class _RegisterPageState extends State<RegisterPage> {

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _confirmpasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "",
        key: GlobalKey(),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Kayıt Ol!",
                // AppLocalizations.of(context)!.helloWorld,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 30),
              LoginTextField(
                hintText: "Email",
                obscureText: false,
                controller: _emailController,
              ),
              SizedBox(height: 10),
              LoginTextField(
                hintText: "Şifre",
                obscureText: true,
                controller: _passwordController,
              ),
              SizedBox(height: 10),
              LoginTextField(
                hintText: "Şifreyi Onayla",
                obscureText: true,
                controller: _confirmpasswordController,
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Üye misiniz?  ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );
                    },
                    child: Text(
                      "Giriş Sayfasına Geçiniz!",
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              LoginButton(
                onPressed: () {
                  passwordConfirmed();
                },
                text: 'Üye Ol',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
