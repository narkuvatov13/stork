import 'package:flutter/material.dart';

class AppThemes {
  //* Light Theme */
  static final light = ThemeData(
    primaryColor: const Color(0xFFff5722),
    scaffoldBackgroundColor: const Color(0xFFFFFFFF),
    brightness: Brightness.light,
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFFFFFFFF),
      elevation: 0,
      iconTheme: IconThemeData(color: Color(0x00000000)),
    ),
    colorScheme: ColorScheme.fromSeed(
      seedColor: const Color(0xFFff5722),
      primary: const Color(0xFFff5722),
      brightness: Brightness.light,
      surface: const Color(0xFFFFFFFF),
    ),
    cardColor: const Color(0xFFFFFFFF),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Color(0xFFFFFFFF),
      selectedItemColor: Color(0xFFff5722),
      unselectedItemColor: Color(0xFF757575),
    ),
  );

  //* Dark Theme */
  static final dark = ThemeData(
    primaryColor: const Color(0xFFff5722),
    scaffoldBackgroundColor: const Color(0xFF121212),
    brightness: Brightness.dark,
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFF121212),
      elevation: 0,
      iconTheme: IconThemeData(color: Color(0xFFFFFFFF)),
    ),
    colorScheme: ColorScheme.fromSeed(
      seedColor: const Color(0xFFff5722),
      primary: const Color(0xFFff5722),
      brightness: Brightness.dark,
      surface: const Color(0xFF121212),
    ),
    cardColor: const Color(0xFF1E1E1E),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Color(0xFF1E1E1E),
      selectedItemColor: Color(0xFFff5722),
      unselectedItemColor: Color(0xFF757575),
    ),
  );
}
