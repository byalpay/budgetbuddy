import 'package:flutter/material.dart';

import 'customField.dart';

class CustomFinanceDialog extends StatefulWidget {
  const CustomFinanceDialog({super.key});

  @override
  State<CustomFinanceDialog> createState() => _CustomFinanceDialogState();
}

  var receiptName;
  var amount;
  var dueDate;
  var status;

TextEditingController receiptNameController = TextEditingController();
TextEditingController amountController = TextEditingController();
TextEditingController dueDateController = TextEditingController();

class _CustomFinanceDialogState extends State<CustomFinanceDialog> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Gelir-Gider Kaydı"),
      content: Column(
        mainAxisSize: MainAxisSize.min, // Dialog içinde minimum yükseklik
        children: [
          CustomField(
            controller: receiptNameController,
            hintText: "Fatura Adı",
            key: GlobalKey(),
          ),
          SizedBox(height: 10),
          CustomField(
            controller: amountController,
            hintText: "Miktar",
            key: GlobalKey(),
          ),
          TextField(
            controller: dueDateController,
            decoration: InputDecoration(labelText: 'Son Ödeme Tarihi'),
          ),
        ],
      ),
      actions: [
        ElevatedButton(
          onPressed: () => Navigator.of(context).pop(),
          // Dialog'u kapatır, Kaydetme işlemi burada gerçekleşecek...
          child: Text("Faturayı Kaydet"),
        ),
      ],
    );
  }
}
