import 'package:flutter/material.dart';
import 'package:stork/utils/constants/app_colors.dart';
import 'package:stork/utils/constants/app_sizes.dart';

class YBottomAppBar {
  YBottomAppBar._();

  static const BottomAppBarThemeData lightBottomAppBarTheme = BottomAppBarThemeData(
    color: AppColors.surface,
    padding: EdgeInsets.all(AppSizes.zero),
    height: AppSizes.bottomHeight,
  );
}
