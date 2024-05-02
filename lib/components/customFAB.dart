import 'package:budgetbuddy/components/customFormDialog.dart';
import 'package:budgetbuddy/theme/theme.dart';
import 'package:flutter/material.dart';
import '../view/settings/service/themeSwitch.dart';

class CustomFAB extends StatelessWidget {
  final IconData icon;
  final Function onPressed;
  final String tooltip;

  CustomFAB({
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
          TextEditingController _controller = TextEditingController();
          return CustomFormDialog();
        },
      ),
      tooltip: tooltip,
      child: Icon(icon),
    );
  }
}
