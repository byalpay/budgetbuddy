import 'package:budgetbuddy/components/customAppBar.dart';
import 'package:budgetbuddy/components/customNavBar.dart';
import 'package:budgetbuddy/components/customDrawer.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

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
