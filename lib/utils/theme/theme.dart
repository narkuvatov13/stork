import 'package:flutter/material.dart';
import 'package:stork/utils/constants/app_colors.dart';
import 'package:stork/utils/constants/app_sizes.dart';
import 'package:stork/utils/constants/app_textstyles.dart';
import 'package:stork/utils/theme/custom_themes/appbar_theme.dart';
import 'package:stork/utils/theme/custom_themes/bottom_app_bar.dart';
import 'package:stork/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:stork/utils/theme/custom_themes/bottomnavigationbar_theme.dart';
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
    fontFamily: 'Montserrat',
    brightness: Brightness.light,
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.primaryBackground,
    textTheme: YTextTheme.lightTextTheme,
    elevatedButtonTheme: YElevevatedButtonTheme.lightElevatedButtonTheme,
    chipTheme: YChipTheme.lightChipTheme,
    appBarTheme: YAppBarTheme.lightAppBarTheme,
    bottomNavigationBarTheme: YBottomNavigationBarTheme.bottomNavigationBarTheme,
    bottomAppBarTheme: YBottomAppBar.lightBottomAppBarTheme,
    checkboxTheme: YCheckBoxTheme.lightCheckBoxTheme,
    bottomSheetTheme: YBottomSheetTheme.lightBottomSheetTheme,
    outlinedButtonTheme: YOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: YTextFormFieldTheme.lightInputDecorationTheme,
    iconTheme: const IconThemeData(color: AppColors.primary, size: AppSizes.iconXl),
    searchBarTheme: SearchBarThemeData(
      backgroundColor: WidgetStatePropertyAll(AppColors.surfaceGrey),
      elevation: WidgetStatePropertyAll(AppSizes.zero),
      shape: WidgetStatePropertyAll(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppSizes.md)),
      ),
      hintStyle: WidgetStateProperty.fromMap({
        WidgetState.focused: AppTextStyles.withColor(
          AppTextStyles.withWeight(AppTextStyles.labelMedium, FontWeight.w600),
          AppColors.textSecondary.withAlpha(AppSizes.opacity50),
        ),
      }),
    ),
  );
  // static ThemeData darkTheme = ThemeData(
  //   useMaterial3: true,
  //   fontFamily: 'Poppins',
  //   brightness: Brightness.dark,
  //   primaryColor: Colors.blue,
  //   scaffoldBackgroundColor: Colors.white,
  //   textTheme: YTextTheme.lightTextTheme,
  //   elevatedButtonTheme: YElevevatedButtonTheme.lightElevatedButtonTheme,
  //   chipTheme: YChipTheme.lightChipTheme,
  //   appBarTheme: YAppBarTheme.lightAppBarTheme,
  //   checkboxTheme: YCheckBoxTheme.lightCheckBoxTheme,
  //   bottomSheetTheme: YBottomSheetTheme.lightBottomSheetTheme,
  //   outlinedButtonTheme: YOutlinedButtonTheme.lightOutlinedButtonTheme,
  //   inputDecorationTheme: YTextFormFieldTheme.lightInputDecorationTheme,
  // );
}
