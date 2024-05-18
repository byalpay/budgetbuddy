import 'package:flutter/material.dart';

import '../../../components/customAppBar.dart';
import '../../../components/customDrawer.dart';
import '../../../components/customNavBar.dart';
import '../../../components/customReceiptCard.dart';
import '../../../components/customReceiptFAB.dart';

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
