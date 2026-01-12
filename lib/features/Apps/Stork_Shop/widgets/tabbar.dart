import 'package:flutter/material.dart';
import 'package:stork/utils/constants/app_colors.dart';
import 'package:stork/utils/constants/app_sizes.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({super.key, required TabController tabController})
    : _tabController = tabController;

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.surface,
      child: TabBar(
        tabAlignment: TabAlignment.start,
        controller: _tabController,
        isScrollable: true,
        labelPadding: EdgeInsets.only(left: AppSizes.md, right: AppSizes.md),
        indicatorSize: TabBarIndicatorSize.tab,
        tabs: [
          Tab(text: 'Temel Gida'),
          Tab(text: 'Atistirmalik'),
          Tab(text: 'Meyve& Sebze'),
          Tab(text: 'Et,Tavuk & Balik'),
          Tab(text: 'Sut Urunleri'),
          Tab(text: 'Su & Icecek'),
          Tab(text: 'Kahvaltilik'),
          Tab(text: 'Dondurma'),
        ],
      ),
    );
  }
}
