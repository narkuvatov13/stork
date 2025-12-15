import 'package:flutter/material.dart';
import 'package:stork/utils/constants/app_colors.dart';
import 'package:stork/utils/constants/app_sizes.dart';
import 'package:stork/utils/constants/app_textstyles.dart';

class YAppBarTheme {
  YAppBarTheme._();

  //light
  static final lightAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: true,
    scrolledUnderElevation: 0,
    backgroundColor: AppColors.primary,
    foregroundColor: Colors.amber,
    // surfaceTintColor: AppColors.surface,
    iconTheme: const IconThemeData(color: AppColors.onPrimary, size: 24),
    actionsIconTheme: const IconThemeData(color: AppColors.onPrimary, size: 24),
    titleTextStyle: AppTextStyles.withColor(AppTextStyles.h2, AppColors.onPrimary),
    actionsPadding: EdgeInsets.all(AppSizes.sm),
  );

  //dark
  // static const darkAppBarTheme = AppBarTheme(
  //   elevation: 0,
  //   centerTitle: true,
  //   scrolledUnderElevation: 0,
  //   backgroundColor: Colors.transparent,
  //   surfaceTintColor: Colors.transparent,
  //   iconTheme: IconThemeData(color: Colors.white, size: 24),
  //   actionsIconTheme: IconThemeData(color: Colors.white, size: 24),
  //   titleTextStyle: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600, color: Colors.white),
  // );
}
