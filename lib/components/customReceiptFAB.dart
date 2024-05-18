import 'package:flutter/material.dart';
import 'customReceiptDialog.dart';

class CustomReceiptFAB extends StatelessWidget {
  final IconData icon;
  final Function onPressed;
  final String tooltip;

  CustomReceiptFAB({
    required this.icon,
    required this.onPressed,
    this.tooltip = '',
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () => showDialog(
        context: context,
        builder: (BuildContext context) {
          return CustomReceiptDialog();
        },
      ),
      tooltip: tooltip,
      child: Icon(icon),
    );
  }
}
