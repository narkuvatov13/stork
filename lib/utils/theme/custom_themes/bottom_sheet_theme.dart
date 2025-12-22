import 'package:flutter/material.dart';
import 'package:stork/utils/constants/app_colors.dart';
import 'package:stork/utils/constants/app_sizes.dart';

class YBottomSheetTheme {
  YBottomSheetTheme._();

  //light
  static BottomSheetThemeData lightBottomSheetTheme = BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: AppColors.surface,
    modalBackgroundColor: AppColors.surface,
    constraints: const BoxConstraints(minWidth: double.infinity),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppSizes.lg)),
    dragHandleColor: AppColors.primary.withAlpha(AppSizes.opacity50),
    dragHandleSize: Size(80, 3),
  );

  //dark
  static BottomSheetThemeData darkBottomSheetTheme = BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: Colors.black,
    modalBackgroundColor: Colors.black,
    constraints: const BoxConstraints(minWidth: double.infinity),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppSizes.lg)),
  );
}
