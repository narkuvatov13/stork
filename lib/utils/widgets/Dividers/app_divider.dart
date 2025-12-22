import 'package:flutter/material.dart';
import 'package:stork/utils/constants/app_colors.dart';
import 'package:stork/utils/constants/app_sizes.dart';

Widget appDivider() {
  return Divider(
    height: AppSizes.height0,
    color: AppColors.primary.withAlpha(AppSizes.opacity30),
    thickness: AppSizes.dividerHeight,
    indent: AppSizes.md,
    endIndent: AppSizes.md,
  );
}
