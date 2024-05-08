import 'package:budgetbuddy/components/customReceiptDialog.dart';
import 'package:budgetbuddy/theme/theme.dart';
import 'package:flutter/material.dart';
import '../view/settings/service/themeSwitch.dart';

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
