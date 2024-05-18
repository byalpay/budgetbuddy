import 'package:flutter/material.dart';

import '../../../theme/theme.dart';

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
