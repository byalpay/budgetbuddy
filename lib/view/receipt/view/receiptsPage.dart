import 'package:budgetbuddy/controllers/connection/connection.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import '../../../components/customAppBar.dart';
import '../../../components/customDrawer.dart';
import '../../../components/customNavBar.dart';
import '../../../components/customReceiptCard.dart';
import '../../../components/customFAB.dart';
import '../../../components/customReceiptDialog.dart';

class ReceiptsPage extends StatefulWidget {
  final String userId;

  const ReceiptsPage({super.key, required this.userId});

  @override
  _ReceiptsPageState createState() => _ReceiptsPageState();
}

class _ReceiptsPageState extends State<ReceiptsPage> {
  Stream<List<Map<String, dynamic>>> fetchReceipts() {
    return db
        .collection('users')
        .doc(widget.userId)
        .collection('receipts')
        .snapshots()
        .map((snapshot) =>
        snapshot.docs.map((doc) => doc.data() as Map<String, dynamic>).toList());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        key: GlobalKey(),
        title: "Faturalar",
      ),
      drawer: CustomDrawer(),
      bottomNavigationBar: CustomNavbar(),
      floatingActionButton: CustomFAB(
        icon: Icons.add,
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return CustomReceiptDialog(userId: widget.userId);
            },
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterFloat,
      body: StreamBuilder<List<Map<String, dynamic>>>(
        stream: fetchReceipts(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error fetching receipts'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(child: Text('No receipts found'));
          } else {
            List<Map<String, dynamic>> receipts = snapshot.data!;
            return ListView.builder(
              itemCount: receipts.length,
              itemBuilder: (BuildContext context, int index) {
                final receipt = receipts[index];
                return BillCard(
                  name: receipt['receiptName'] ?? 'Unknown',
                  amount: (receipt['amount'] as num?)?.toDouble() ?? 0.0,
                  dueDate: (receipt['dueDate'] as Timestamp?)?.toDate().toString() ?? 'Unknown',
                  isPaid: receipt['isPaid'] ?? false,
                );
              },
            );
          }
        },
      ),
    );
  }
}
