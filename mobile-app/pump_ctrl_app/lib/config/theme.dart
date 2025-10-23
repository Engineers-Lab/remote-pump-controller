import 'package:flutter/material.dart';

class AppTheme {
  ThemeData lightTheme = ThemeData(
    colorScheme: ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xFF0A4D68),
      onPrimary: Color(0xFF333333),
      secondary: Color(0xFF00A896),
      onSecondary: Color(0xFF333333),
      error: Color(0xFFB00020),
      onError: Color(0xFFFFFFFF),
      surface: Color(0xFFF5F5F5),
      onSurface: Color(0xFF333333),
    ),
  );
}
