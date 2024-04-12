import 'package:budgetbuddy/theme/dark_theme.dart';
import 'package:budgetbuddy/theme/light_theme.dart';
import 'package:budgetbuddy/widgets/customAppBar.dart';
import 'package:budgetbuddy/widgets/bottomNavigationBar.dart';
import 'package:budgetbuddy/widgets/customDrawer.dart';
import 'package:flutter/material.dart';
import 'package:budgetbuddy/service/themeSwitch.dart';


class MainPage extends StatelessWidget {
   const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    bool darkModeEnabled = false;

    return Scaffold(
        appBar: CustomAppBar(
          key: GlobalKey(),
          title: "Ana Sayfa",
        ),
        drawer: const CustomDrawer(),
        body: const Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    // Sayfanızın içeriği buraya gelecek
                  ],
                ),
              ),
            ),
            BottomNavBar(),
          ],
        ),
      );
  }
}
