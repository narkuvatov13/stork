import 'package:flutter/material.dart';

Color primary = Color(0xFF5D3FD3);
Color primaryDark = Color(0xFF4A2FB0);
Color accent = Color(0xFFFEC400);
Color secondary = Color(0xFFFFE680);
Color background = Color(0xFFFFFFFF);
Color surface = Color(0xFFF7F7FC);
Color textPrimary = Color(0xFF1A1A1A);
Color textSecondary = Color(0xFF6F6F6F);

class YColors {
  YColors._();

  // App Basic Colors
  static const Color primary = Color(0xFF4b68ff);
  static const Color secondary = Color(0xFF4b68ff);
  static const Color accent = Color(0xFF4b68ff);

  // Gradient Colors
  static const Gradient linerGradient = LinearGradient(
    begin: Alignment(0.0, 0.0),
    end: Alignment(0.707, -0.707),
    colors: [Color(0xffffffff), Color(0xffffffff), Color(0xffffffff)],
  );

  // Text Colors
  static const Color textPrimary = Color(0xFF4b68ff);
  static const Color textSecondary = Color(0xFF4b68ff);
  static const Color textWhite = Color(0xFFFFFFFF);

  // Background Colors
  static const Color light = Color(0xFFFFFFFF);
  static const Color dark = Color(0xFFFFFFFF);
  static const Color primaryBackground = Color(0xFFFFFFFF);

  // Background Container Colors
  static const Color lightContainer = Color(0xFFFFFFFF);
  static final Color darkContainer = Color(0xFFFFFFFF).withValues(alpha: 0.1);

  // Button Colors
  static const Color buttonPrimary = Color(0xFFFFFFFF);
  static const Color buttonSecondary = Color(0xFFFFFFFF);
  static const Color buttonDisabled = Color(0xFFFFFFFF);

  // Border Colors
  static const Color borderPrimary = Color(0xFFFFFFFF);
  static const Color borderSecodary = Color(0xFFFFFFFF);

  //Error and Validation Colors
  static const Color error = Color(0xffffffff);
  static const Color success = Color(0xffffffff);
  static const Color warning = Color(0xffffffff);
  static const Color info = Color(0xffffffff);

  // Neutural Shades
  static const Color black = Color(0x00000000);
  static const Color darkerGrey = Color(0x00000000);
  static const Color darkGrey = Color(0x00000000);
  static const Color grey = Color(0x00000000);

  //
}
