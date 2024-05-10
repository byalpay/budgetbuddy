import 'package:budgetbuddy/components/customReceiptCard.dart';
import 'package:budgetbuddy/components/customReceiptFAB.dart';
import 'package:budgetbuddy/components/customNavBar.dart';
import 'package:budgetbuddy/components/customAppBar.dart';
import 'package:budgetbuddy/components/customDrawer.dart';
import 'package:budgetbuddy/components/customReceiptDialog.dart';
import 'package:flutter/material.dart';

import '../../home/main-page/view/mainPage.dart';

class ReceiptsPage extends StatefulWidget {
  const ReceiptsPage({super.key});

  @override
  _ReceiptsPageState createState() => _ReceiptsPageState();
}

class _ReceiptsPageState extends State<ReceiptsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        key: GlobalKey(),
        title: "Faturalar",
      ),
      drawer: CustomDrawer(),
      bottomNavigationBar: CustomNavbar(),
      floatingActionButton: CustomReceiptFAB(
        icon: Icons.add,
        onPressed: () {
          // Bir şey atamaya gerek yok
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterFloat,
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  BillCard(
                    name: "Telefon Faturası",
                    amount: 100,
                    dueDate: "11",
                    isPaid: false,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
