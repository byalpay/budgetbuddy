import 'package:budgetbuddy/theme/theme.dart';
import 'package:flutter/material.dart';

bool darkModeEnabled = true;

void toggleTheme() async {
  if(darkModeEnabled == true)
    {
      lightTheme = ThemeData();
    }
  else
    {
      darkTheme = ThemeData();
    }
}
