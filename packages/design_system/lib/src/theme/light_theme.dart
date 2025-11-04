import 'package:design_system/src/tokens/colors.dart';
import 'package:flutter/material.dart';

final lightTheme = ThemeData(
    textTheme: TextTheme(displayLarge: TextStyle(color: primaryColor)),
    scaffoldBackgroundColor: backgroundColor,
    inputDecorationTheme: const InputDecorationTheme(
      border: InputBorder.none,
    ));
