import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stork/utils/constants/app_colors.dart';
import 'package:stork/utils/constants/app_sizes.dart';

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
    _tabController = TabController(length: 8, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Products')),
      body: Column(
        children: [
          Material(
            color: AppColors.tertinary,
            child: TabBar(
              tabAlignment: TabAlignment.start,
              controller: _tabController,
              isScrollable: true,
              labelPadding: EdgeInsets.only(left: AppSizes.md, right: AppSizes.md),
              // padding: EdgeInsets.zero,
              tabs: [
                Tab(text: 'Tab1111111'),
                Tab(text: 'Tab2222'),
                Tab(text: 'Tab33'),
                Tab(text: 'Tab4'),
                Tab(text: 'Tab5'),
                Tab(text: 'Tab6'),
                Tab(text: 'Tab7'),
                Tab(text: 'Tab8'),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                Text('data1'),
                Text('data2'),
                Text('data3'),
                Text('data4'),
                Text('data5'),
                Text('data6'),
                Text('data7'),
                Text('data8'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
