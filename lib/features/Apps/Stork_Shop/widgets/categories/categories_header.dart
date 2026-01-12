import 'package:flutter/material.dart';
import 'package:stork/utils/constants/app_textstyles.dart';

class CategoriesHeaderWidget extends StatelessWidget {
  final String title;

  const CategoriesHeaderWidget({super.key, this.title = ''});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [Text(title, style: AppTextStyles.h4)],
    );
  }
}
