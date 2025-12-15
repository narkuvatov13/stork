import 'package:flutter/material.dart';
import 'package:stork/utils/theme/custom_themes/appbar_theme.dart';
import 'package:stork/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:stork/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:stork/utils/theme/custom_themes/chip_theme.dart';
import 'package:stork/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:stork/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:stork/utils/theme/custom_themes/text_field_theme.dart';
import 'package:stork/utils/theme/custom_themes/text_theme.dart';

class YAppTheme {
  YAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: YTextTheme.lightTextTheme,
    elevatedButtonTheme: YElevevatedButtonTheme.lightElevatedButtonTheme,
    chipTheme: YChipTheme.lightChipTheme,
    appBarTheme: YAppBarTheme.lightAppBarTheme,
    checkboxTheme: YCheckBoxTheme.lightCheckBoxTheme,
    bottomSheetTheme: YBottomSheetTheme.lightBottomSheetTheme,
    outlinedButtonTheme: YOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: YTextFormFieldTheme.lightInputDecorationTheme,
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: YTextTheme.lightTextTheme,
    elevatedButtonTheme: YElevevatedButtonTheme.lightElevatedButtonTheme,
    chipTheme: YChipTheme.lightChipTheme,
    appBarTheme: YAppBarTheme.lightAppBarTheme,
    checkboxTheme: YCheckBoxTheme.lightCheckBoxTheme,
    bottomSheetTheme: YBottomSheetTheme.lightBottomSheetTheme,
    outlinedButtonTheme: YOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: YTextFormFieldTheme.lightInputDecorationTheme,
  );
}
