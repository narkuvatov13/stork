import 'package:flutter/material.dart';

// Color primary = Color(0xFF5D3FD3);
// Color primaryDark = Color(0xFF4A2FB0);
// Color accent = Color(0xFFFEC400);
// Color secondary = Color(0xFFFFE680);
// Color background = Color(0xFFFFFFFF);
// Color surface = Color(0xFFF7F7FC);
// Color textPrimary = Color(0xFF1A1A1A);
// Color textSecondary = Color(0xFF6F6F6F);

class AppColors {
  AppColors._();  

  // App Basic Colors
  static const Color primary = Color(0xFF0B8F4D);
  static const Color onPrimary = Color(0xFFFFFFFF);
  static const Color secondary = Color(0xFFC62828);
  static const Color accent = Color(0xFF4b68ff);

  // Gradient Colors
  static const Gradient linerGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,

    colors: [Color(0xff0B8F4D), Color(0xff2FA36B)],
  );

  // Text Colors
  static const Color textPrimary = Color(0xFF1F2933);
  static const Color textSecondary = Color(0xFF6B7280);
  static const Color textDisabled = Color(0xFF9CA3AF);

  // Background Colors
  // static const Color light = Color(0xFFFFFFFF);
  // static const Color dark = Color(0xFFFFFFFF);
  static const Color primaryBackground = Color(0xFFF7F9F8);
  static const Color surface = Color(0xFFFFFFFF);

  // Background Container Colors as Card
  static const Color lightContainer = Color(0xFFFFFFFF);
  static final Color darkContainer = Color(0xFFFFFFFF).withValues(alpha: 0.1);

  // Button Colors
  static const Color buttonPrimary = Color(0xFF0B8F4D);
  static const Color buttonSecondary = Color(0xFFC62828);
  static const Color buttonDisabled = Color(0xFFD1D5DB);

  // Border || Divider Colors
  static const Color borderPrimary = Color(0xFFFFFFFF);
  static const Color borderSecodary = Color(0xFFFFFFFF);
  static const Color dividerPrimary = Color(0xFFE5E7EB);

  // Divider Colors

  //Error and Validation Colors
  static const Color error = Color(0xFFD32F2F);
  static const Color success = Color(0xFF2E7D32);
  static const Color warning = Color(0xFFF9A825);
  static const Color info = Color(0xFF1976D2);

  // Neutural Shades
  static const Color black = Color(0x00000000);
  static const Color darkerGrey = Color(0x00000000);
  static const Color darkGrey = Color(0x00000000);
  static const Color grey = Color(0x00000000);
  static const Color white = Color(0xFFFFFFFF);

  //
}
