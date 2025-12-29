import 'package:flutter/material.dart';
import 'package:stork/utils/constants/app_colors.dart';
import 'package:stork/utils/constants/app_sizes.dart';

class YTextSelectionTheme {
  YTextSelectionTheme._();

  static TextSelectionThemeData textSelectionThemeData = TextSelectionThemeData(
    cursorColor: AppColors.primary,
    selectionColor: AppColors.primary.withAlpha(AppSizes.opacity50),
  );
}
