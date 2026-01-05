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
import 'package:stork/utils/theme/custom_themes/search_bar_theme.dart';
import 'package:stork/utils/theme/custom_themes/text_field_theme.dart';
import 'package:stork/utils/theme/custom_themes/text_theme.dart';
import 'package:stork/utils/theme/text_button_theme.dart';
import 'package:stork/utils/theme/text_selection_theme.dart';

class YAppTheme {
  YAppTheme._();

  static ThemeData lightTheme = ThemeData(
    fontFamily: 'Montserrat',
    scaffoldBackgroundColor: AppColors.primaryBackground,
    appBarTheme: YAppBarTheme.lightAppBarTheme,
    bottomNavigationBarTheme: YBottomNavigationBarTheme.bottomNavigationBarTheme,
    bottomAppBarTheme: YBottomAppBar.lightBottomAppBarTheme,
    bottomSheetTheme: YBottomSheetTheme.lightBottomSheetTheme,
    textButtonTheme: YTextButtonTheme.textButtonThemeData,
    brightness: Brightness.light,
    primaryColor: AppColors.primary,
    textTheme: YTextTheme.lightTextTheme,
    elevatedButtonTheme: YElevevatedButtonTheme.lightElevatedButtonTheme,
    chipTheme: YChipTheme.lightChipTheme,
    checkboxTheme: YCheckBoxTheme.lightCheckBoxTheme,
    outlinedButtonTheme: YOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: YTextFormFieldTheme.lightInputDecorationTheme,
    iconTheme: const IconThemeData(color: AppColors.primary, size: AppSizes.iconXl),
    textSelectionTheme: YTextSelectionTheme.textSelectionThemeData,
    searchBarTheme: YSearchBarTheme.searchBarThemeData,
    tabBarTheme: TabBarThemeData(
      indicatorColor: AppColors.primary,
      indicatorAnimation: TabIndicatorAnimation.elastic,
      labelColor: AppColors.primary,
      unselectedLabelColor: AppColors.textPrimary,
      labelStyle: AppTextStyles.withWeight(AppTextStyles.bodySmall, FontWeight.w500),
      unselectedLabelStyle: AppTextStyles.withWeight(AppTextStyles.bodySmall, FontWeight.w500),
      indicator: BoxDecoration(
        border: BoxBorder.fromLTRB(bottom: BorderSide(color: AppColors.primary, width: 2)),
      ),
      dividerHeight: 2,
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
