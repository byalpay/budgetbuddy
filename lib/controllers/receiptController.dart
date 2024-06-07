import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'connection.dart';

class ReceiptController {

  final userId = FirebaseAuth.instance.currentUser?.uid ?? '';

  Stream<List<Map<String, dynamic>>> fetchReceipts() {
    return FirebaseConnection().db
        .collection('users')
        .doc(userId)
        .collection('receipts')
        .snapshots()
        .map((snapshot) => snapshot.docs.map((doc) {
      var data = doc.data() as Map<String, dynamic>;
      data['id'] = doc.id; // Belge kimliğini ekliyoruz
      return data;
    }).toList());
  }

  Future<void> addReceiptDetails(String userId, String receiptName, int amount,
      DateTime dueDate, bool isPaid) async {
    try {
      await FirebaseConnection()
          .db
          .collection('users')
          .doc(userId)
          .collection('receipts')
          .add({
        'receiptName': receiptName,
        'amount': amount,
        'dueDate': Timestamp.fromDate(dueDate),
        'isPaid': isPaid,
      });
    } catch (e) {
      print("Problem bu: $e");
    }
  }

  Future<void> deleteReceipt(String receiptId) async {
    try {
      await FirebaseConnection().db
          .collection('users')
          .doc(userId)
          .collection('receipts')
          .doc(receiptId)
          .delete();
    } catch (e) {
      print("Silme işlemi sırasında hata: $e");
    }
  }
}
