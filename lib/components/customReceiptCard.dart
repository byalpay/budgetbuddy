import 'package:flutter/material.dart';

class BillCard extends StatelessWidget {
  final String name;
  final double amount;
  final String dueDate;
  final bool isPaid;

  const BillCard({
    Key? key,
    required this.name,
    required this.amount,
    required this.dueDate,
    required this.isPaid,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      margin: EdgeInsets.all(10),
      child: ListTile(
        title: Text(name),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Amount: \$${amount.toStringAsFixed(2)}'),
            Text('Due Date: ${dueDate.toString()}'),
            Row(
              children: [
                Text('Status: '),
                Icon(
                  isPaid ? Icons.check_circle : Icons.cancel,
                  color: isPaid ? Colors.green : Colors.red,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
