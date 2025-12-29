import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stork/utils/constants/app_colors.dart';
import 'package:stork/utils/constants/app_textstyles.dart';

class StorkShopProductsPage extends ConsumerStatefulWidget {
  const StorkShopProductsPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _StorkShopProductsPage();
}

class _StorkShopProductsPage extends ConsumerState<StorkShopProductsPage>
    with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Products', style: AppTextStyles.h3)),
      body: Column(
        children: [
          Material(
            color: AppColors.tertinary,
            child: TabBar(
              controller: _tabController,
              tabs: [
                Tab(text: 'Tab1'),
                Tab(text: 'Tab2'),
                Tab(text: 'Tab3'),
                Tab(text: 'Tab4'),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [Text('data1'), Text('data2'), Text('data3'), Text('data4')],
            ),
          ),
        ],
      ),
    );
  }
}
