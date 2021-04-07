import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  static const MaterialColor blue = MaterialColor(
    _bluePrimaryValue,
    <int, Color>{
      50: Color(0xFFe9e9ff),
      100: Color(0xFFc9c9ff),
      200: Color(0xFFa5a5ff),
      300: Color(0xFF8080ff),
      400: Color(0xFF6565ff),
      500: Color(_bluePrimaryValue),
      600: Color(0xFF4343ff),
      700: Color(0xFF3a3aff),
      800: Color(0xFF3232ff),
      900: Color(0xFF2222ff),
    },
  );
  static const int _bluePrimaryValue = 0xFF4A4AFF;
}
