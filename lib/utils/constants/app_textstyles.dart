import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// flutter pub add google_fonts

class AppTextStyles {
  // *headings
  static TextStyle h1 = GoogleFonts.lato(
    fontSize: 32,
    fontWeight: FontWeight.w700,
    height: 1.2,
    letterSpacing: -0.5,
  );

  static TextStyle h2 = GoogleFonts.lato(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    height: 1.2,
    letterSpacing: -0.5,
  );

  static TextStyle h3 = GoogleFonts.lato(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    height: 1.2,
    letterSpacing: -0.5,
  );

  // *body text
  static TextStyle bodyLarge = GoogleFonts.lato(
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );

  static TextStyle bodyMedium = GoogleFonts.lato(
    fontSize: 15,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.2,
  );

  static TextStyle bodySmall = GoogleFonts.lato(
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );

  //* Button Text
  static TextStyle buttonLarge = GoogleFonts.lato(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.5,
  );

  static TextStyle buttonMedium = GoogleFonts.lato(
    fontSize: 15,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.5,
  );

  static TextStyle buttonSmall = GoogleFonts.lato(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.5,
  );

  // * Label Text
  static TextStyle labelMeium = GoogleFonts.lato(
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );

  // * Helper Function for Color Variations
  static TextStyle withColor(TextStyle style, Color color) {
    return style.copyWith(color: color);
  }

  //
  static TextStyle withWeight(TextStyle style, FontWeight weight) {
    return style.copyWith(fontWeight: weight);
  }
}
