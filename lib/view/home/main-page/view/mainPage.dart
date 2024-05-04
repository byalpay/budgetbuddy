import 'package:budgetbuddy/components/customAppBar.dart';
import 'package:budgetbuddy/components/customNavBar.dart';
import 'package:budgetbuddy/components/customDrawer.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
   const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          key: GlobalKey(),
          title: "Ana Sayfa",
        ),
        drawer: CustomDrawer(),
        bottomNavigationBar: CustomNavbar(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [],
                ),
              ),
            ),
          ],
        ),
      );
  }
}
