import 'package:flutter/material.dart';
import 'package:stork/utils/constants/app_colors.dart';
import 'package:stork/utils/constants/app_sizes.dart';
import 'package:stork/utils/constants/app_textstyles.dart';

class YTextButtonTheme {
  YTextButtonTheme._();

  static TextButtonThemeData textButtonThemeData = TextButtonThemeData(
    style: TextButton.styleFrom(
      textStyle: AppTextStyles.withColor(
        AppTextStyles.withWeight(AppTextStyles.bodyMedium, FontWeight.w500),
        AppColors.primary,
      ),

      iconAlignment: IconAlignment.end,
      iconColor: AppColors.primary,
      iconSize: AppSizes.iconSm,
    ),
  );
}
