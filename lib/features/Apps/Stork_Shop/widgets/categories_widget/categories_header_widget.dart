import 'package:flutter/material.dart';
import 'package:stork/utils/constants/app_colors.dart';
import 'package:stork/utils/constants/app_sizes.dart';
import 'package:stork/utils/constants/app_textstyles.dart';

class CategoriesHeaderWidget extends StatelessWidget {
  final String title;
  final String actionText;
  final void Function()? onTap;
  const CategoriesHeaderWidget({super.key, this.title = '', this.actionText = '', this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: AppTextStyles.h4),

        GestureDetector(
          onTap: onTap,
          child: Row(
            children: [
              Text(
                actionText,
                style: AppTextStyles.withColor(
                  AppTextStyles.withWeight(AppTextStyles.bodySmall, FontWeight.w500),
                  AppColors.primary,
                ),
              ),
              Icon(Icons.chevron_right, size: AppSizes.iconMd),
            ],
          ),
        ),
      ],
    );
  }
}
