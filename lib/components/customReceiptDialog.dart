import 'package:budgetbuddy/components/customField.dart';
import 'package:flutter/material.dart';

class CustomReceiptDialog extends StatefulWidget {
  const CustomReceiptDialog({super.key});

  @override
  State<CustomReceiptDialog> createState() => _CustomReceiptDialogState();
}

var receiptName;
var amount;
var dueDate;
var status;

TextEditingController receiptNameController = TextEditingController();
TextEditingController amountController = TextEditingController();
TextEditingController dueDateController = TextEditingController();

class _CustomReceiptDialogState extends State<CustomReceiptDialog> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Fatura Kaydı"),
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
