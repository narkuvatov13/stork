import 'package:flutter/material.dart';
import 'package:stork/utils/constants/app_colors.dart';
import 'package:stork/utils/constants/app_sizes.dart';
import 'package:stork/utils/constants/app_textstyles.dart';

class YSearchBarTheme {
  YSearchBarTheme._();

  static SearchBarThemeData searchBarThemeData = SearchBarThemeData(
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
  );
}
