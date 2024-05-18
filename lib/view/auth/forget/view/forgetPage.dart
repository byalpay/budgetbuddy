import 'package:budgetbuddy/components/customFinanceDialog.dart';
import 'package:budgetbuddy/controllers/resetPassword.dart';
import 'package:flutter/material.dart';

import '../../../../components/authButton.dart';
import '../../../../components/customAppBar.dart';
import '../../../../components/customLoginField.dart';
import '../../login/view/loginPage.dart';

class ForgetPage extends StatefulWidget {
  const ForgetPage({super.key});

  @override
  State<ForgetPage> createState() => _ForgetPageState();
}
final _emailController = TextEditingController();

void forgetCallBack(){
  passwordReset(_emailController.text.trim());
}

class _ForgetPageState extends State<ForgetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "",
        key: GlobalKey(),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Şifremi Unuttum!",
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
                      MaterialPageRoute(builder: (context) => const LoginPage()),
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
                forgetCallBack();
              },
              text: "Kod Gönder",
            ),
          ],
        ),
      ),
    );
  }
}
