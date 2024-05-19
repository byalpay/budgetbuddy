import 'package:flutter/material.dart';
import '../controllers/receipts/addReceipts.dart';
import 'customField.dart';

class CustomReceiptDialog extends StatefulWidget {
  const CustomReceiptDialog({super.key});

  @override
  State<CustomReceiptDialog> createState() => _CustomReceiptDialogState();
}

class _CustomReceiptDialogState extends State<CustomReceiptDialog> {
  final TextEditingController receiptNameController = TextEditingController();
  final TextEditingController amountController = TextEditingController();
  final TextEditingController dueDateController = TextEditingController();

  bool isPaid = false;  // Switch durumunu takip eden değişken

  void addReceiptsBack() {
    int amount = int.tryParse(amountController.text.trim()) ?? 0;  // String'i int'e dönüştür
    DateTime? dueDate = DateTime.tryParse(dueDateController.text.trim());  // String'i DateTime'a dönüştür

    if (dueDate == null) {
      dueDate = DateTime.now();  // Hatalı tarih girişi olursa, varsayılan olarak bugünün tarihini kullanır
    }

    addReceiptDetails(
      receiptNameController.text.trim(),
      amount,
      dueDate,
      isPaid,
    );
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Fatura Kaydı"),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomField(
              labelText: "Fatura Adı",
              controller: receiptNameController,
              hintText: "Fatura Adı",
              key: GlobalKey(),
            ),
            SizedBox(height: 10),
            CustomField(
              labelText: "Miktar",
              controller: amountController,
              hintText: "Miktar",
              keyboardType: TextInputType.number,  // Sadece sayısal giriş için klavye tipi
              key: GlobalKey(),
            ),
            SizedBox(height: 10),
            TextField(
              controller: dueDateController,
              decoration: InputDecoration(
                labelText: 'Son Ödeme Tarihi',
                border: OutlineInputBorder(),
              ),
              onTap: () async {
                DateTime? pickedDate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2101),
                );
                if (pickedDate != null) {
                  setState(() {
                    dueDateController.text =
                    "${pickedDate.toLocal()}".split(' ')[0];
                  });
                }
              },
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Ödenmedi"),
                Switch(
                  value: isPaid,
                  onChanged: (value) {
                    setState(() {
                      isPaid = value;
                    });
                  },
                ),
                Text("Ödendi"),
              ],
            ),
          ],
        ),
      ),
      actions: [
        ElevatedButton(
          onPressed: () {
            addReceiptsBack();
            Navigator.of(context).pop();  // Dialog'u kapatır
          },
          child: Text("Faturayı Kaydet"),
        ),
      ],
    );
  }
}
