import 'package:budgetbuddy/components/customFinanceFAB.dart';
import 'package:budgetbuddy/components/customNavBar.dart';
import 'package:budgetbuddy/components/customAppBar.dart';
import 'package:budgetbuddy/components/customDrawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FinancePage extends StatefulWidget {
  const FinancePage({super.key});

  @override
  State<FinancePage> createState() => _FinancePageState();
}

class _FinancePageState extends State<FinancePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
          key: GlobalKey(),
          title : "Gelir-Gider"
      ),
      floatingActionButton: CustomFinanceFAB(
        icon: Icons.add,
        onPressed :() {
          // Boş kalmalı
        },
        tooltip: "",
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterFloat,
      drawer: CustomDrawer(),
      bottomNavigationBar: CustomNavbar(),
      body: const Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: []
      ),
    );
  }
}
