import 'package:flutter/material.dart';
import 'package:stork/utils/constants/app_sizes.dart';
import 'package:stork/utils/constants/app_textstyles.dart';

class CategorieCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final void Function()? onTap;

  const CategorieCard({super.key, required this.imagePath, required this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Card(
            clipBehavior: Clip.antiAlias,
            color: Colors.white,
            elevation: 1.5,
            child: Center(child: Image.asset(imagePath)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppSizes.md),
            child: Text(
              softWrap: true,
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              title,
              style: AppTextStyles.withWeight(AppTextStyles.bodyXsSmall, FontWeight.w600),
            ),
          ),
        ],
      ),
    );
  }
}
