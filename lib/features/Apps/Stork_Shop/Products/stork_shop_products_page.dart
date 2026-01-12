import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stork/features/Apps/Stork_Shop/data/models/product_model.dart';
import 'package:stork/features/Apps/Stork_Shop/data/repository/product_repository.dart';
import 'package:stork/utils/constants/app_colors.dart';
import 'package:stork/utils/constants/app_image_strings.dart';
import 'package:stork/utils/constants/app_sizes.dart';
import 'package:stork/utils/constants/app_textstyles.dart';

class StorkShopProductsPage extends ConsumerStatefulWidget {
  const StorkShopProductsPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _StorkShopProductsPage();
}

class _StorkShopProductsPage extends ConsumerState<StorkShopProductsPage>
    with TickerProviderStateMixin {
  final Map<String, GlobalKey> temelGidaKeys = {
    'Peynir': GlobalKey(),
    'Cikolata': GlobalKey(),
    'Cips': GlobalKey(),
    'Biskuvi': GlobalKey(),
    'Kek': GlobalKey(),
  };

  final Map<String, GlobalKey> atistirmalikKeys = {
    'a': GlobalKey(),
    'b': GlobalKey(),
    'c': GlobalKey(),
    'd': GlobalKey(),
    'f': GlobalKey(),
  };

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              //APPBAR
              SliverAppBar(title: Text('Product'), pinned: true),
              // TABBAR
              SliverPersistentHeader(
                pinned: true,
                delegate: _TabBarHeader(
                  TabBar(
                    isScrollable: true,
                    labelStyle: AppTextStyles.labelSmall,
                    unselectedLabelStyle: AppTextStyles.labelSmall,

                    tabs: [
                      Tab(text: 'Temel Gida'),
                      Tab(text: 'Atistirmalik'),
                      // Tab(text: 'Meyve & Sebze'),
                      // Tab(text: 'Et,Tavuk & Balik'),
                      // Tab(text: 'Sut Urunleri'),
                      // Tab(text: 'Su & Icecek'),
                      // Tab(text: 'Kahvaltilik'),
                      // Tab(text: 'Tab'),
                    ],
                  ),
                ),
              ),

              // CHIPS
              SliverPersistentHeader(
                pinned: true,
                delegate: _ChipsHeader(sectionKeys: temelGidaKeys),
              ),
            ];
          },
          body: TabBarView(
            children: [
              _TabContent(sectionKeys: temelGidaKeys, products: ProductData.products),
              _TabContent(sectionKeys: atistirmalikKeys, products: ProductData.products),
            ],
          ),
        ),
      ),
    );
  }
}

class _TabBarHeader extends SliverPersistentHeaderDelegate {
  final TabBar tabBar;

  _TabBarHeader(this.tabBar);

  @override
  double get minExtent => tabBar.preferredSize.height;

  @override
  double get maxExtent => tabBar.preferredSize.height;

  @override
  Widget build(context, double shrinkOffset, bool overlapsContent) {
    return Container(color: Colors.white, child: tabBar);
  }

  @override
  bool shouldRebuild(_) => false;
}

class _ChipsHeader extends SliverPersistentHeaderDelegate {
  final Map<String, GlobalKey> sectionKeys;
  _ChipsHeader({required this.sectionKeys});
  @override
  double get minExtent => 56;

  @override
  double get maxExtent => 56;

  @override
  Widget build(context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: sectionKeys.keys.map((label) {
          return RawChip(
            selected: true,
            showCheckmark: false,
            color: WidgetStatePropertyAll(AppColors.primary),

            shape: StadiumBorder(),
            labelStyle: AppTextStyles.withColor(AppTextStyles.labelSmall, AppColors.onPrimary),
            // padding: EdgeInsets.zero,
            // labelPadding: EdgeInsets.only(left: 10, right: 10, top: 2, bottom: 2),
            label: Text('Cikolata'),
            visualDensity: VisualDensity(vertical: -4, horizontal: -2),
            onSelected: (_) => onChipTap(label),
          );
        }).toList(),
      ),
    );
  }

  @override
  bool shouldRebuild(_) => false;

  void onChipTap(String key) {
    final context = sectionKeys[key]?.currentContext;
    if (context == null) return;

    Scrollable.ensureVisible(
      context,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
      alignment: 0.1,
    );
  }
}

class _TabContent extends ConsumerWidget {
  final Map<String, GlobalKey> sectionKeys;
  final List<ProductModel> products;
  const _TabContent({required this.sectionKeys, required this.products});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CustomScrollView(
      slivers: [
        SliverPadding(
          padding: EdgeInsets.symmetric(vertical: AppSizes.sm),
          sliver: SliverToBoxAdapter(
            child: ProductCategorieHeader(key: sectionKeys['Peynir'], title: 'Peynirler'),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: AppSizes.md),
          sliver: SliverGrid(
            delegate: SliverChildBuilderDelegate((context, index) {
              return Center(
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    // Product Container
                    Container(
                      constraints: BoxConstraints(
                        minHeight: AppSizes.heightMin210,
                        maxHeight: AppSizes.heightMax210,
                        minWidth: AppSizes.widthMin180,
                        maxWidth: AppSizes.widthMax180,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.surface,
                        borderRadius: BorderRadius.circular(AppSizes.borderRadiusMd),
                      ),
                    ),
                    // Product Image
                    ConstrainedBox(
                      constraints: BoxConstraints(
                        minHeight: AppSizes.heightMin100,
                        maxHeight: AppSizes.heightMax150,
                        minWidth: AppSizes.widthMin180,
                        maxWidth: AppSizes.widthMax180,
                      ),
                      child: Align(
                        alignment: AlignmentGeometry.center,
                        child: Image.asset(AppImageString.burger, fit: BoxFit.cover),
                      ),
                    ),

                    // Product Texts
                    Positioned(
                      top: AppSizes.productImageMinHeight,
                      left: AppSizes.xs,
                      width: AppSizes.width150,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${products[index].productPrice.toString()} MNT',
                            style: AppTextStyles.withColor(
                              AppTextStyles.labelMedium,
                              AppColors.primary,
                            ),
                          ),

                          Visibility(
                            visible: products[index].productPriceKg != null ? true : false,
                            child: Text(
                              '${products[index].productPriceKg.toString()} MNT / Litre',

                              style: AppTextStyles.withColor(
                                AppTextStyles.labelXsSmall,
                                AppColors.primary,
                              ),
                            ),
                          ),

                          Text(
                            products[index].productDescriptions.toString(),
                            softWrap: true,
                            textAlign: TextAlign.start,
                            maxLines: 2,
                            style: AppTextStyles.withColor(
                              AppTextStyles.labelXsSmall,
                              AppColors.textSecondary,
                            ),
                          ),
                        ],
                      ),
                    ),

                    // Product Add Button
                    // AddProductButton(product: ProductData.products[index]),
                  ],
                ),
              );
            }, childCount: products.length),

            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1 / 1.3,
              mainAxisSpacing: AppSizes.md,
              crossAxisSpacing: AppSizes.md,
            ),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.symmetric(vertical: AppSizes.sm),
          sliver: SliverToBoxAdapter(
            child: ProductCategorieHeader(key: sectionKeys['Cikolata'], title: 'Cikolatalar'),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: AppSizes.md),
          sliver: SliverGrid(
            delegate: SliverChildBuilderDelegate((context, index) {
              return Center(
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    // Product Container
                    Container(
                      constraints: BoxConstraints(
                        minHeight: AppSizes.heightMin210,
                        maxHeight: AppSizes.heightMax210,
                        minWidth: AppSizes.widthMin180,
                        maxWidth: AppSizes.widthMax180,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.surface,
                        borderRadius: BorderRadius.circular(AppSizes.borderRadiusMd),
                      ),
                    ),
                    // Product Image
                    ConstrainedBox(
                      constraints: BoxConstraints(
                        minHeight: AppSizes.heightMin100,
                        maxHeight: AppSizes.heightMax150,
                        minWidth: AppSizes.widthMin180,
                        maxWidth: AppSizes.widthMax180,
                      ),
                      child: Align(
                        alignment: AlignmentGeometry.center,
                        child: Image.asset(AppImageString.burger, fit: BoxFit.cover),
                      ),
                    ),

                    // Product Texts
                    Positioned(
                      top: AppSizes.productImageMinHeight,
                      left: AppSizes.xs,
                      width: AppSizes.width150,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${products[index].productPrice.toString()} MNT',
                            style: AppTextStyles.withColor(
                              AppTextStyles.labelMedium,
                              AppColors.primary,
                            ),
                          ),

                          Visibility(
                            visible: products[index].productPriceKg != null ? true : false,
                            child: Text(
                              '${products[index].productPriceKg.toString()} MNT / Litre',

                              style: AppTextStyles.withColor(
                                AppTextStyles.labelXsSmall,
                                AppColors.primary,
                              ),
                            ),
                          ),

                          Text(
                            products[index].productDescriptions.toString(),
                            softWrap: true,
                            textAlign: TextAlign.start,
                            maxLines: 2,
                            style: AppTextStyles.withColor(
                              AppTextStyles.labelXsSmall,
                              AppColors.textSecondary,
                            ),
                          ),
                        ],
                      ),
                    ),

                    // Product Add Button
                    // AddProductButton(product: ProductData.products[index]),
                  ],
                ),
              );
            }, childCount: products.length),

            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1 / 1.3,
              mainAxisSpacing: AppSizes.md,
              crossAxisSpacing: AppSizes.md,
            ),
          ),
        ),
      ],
    );
  }
}

class ProductCategorieHeader extends StatelessWidget {
  const ProductCategorieHeader({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSizes.md),
      child: Text(title, style: AppTextStyles.labelMedium),
    );
  }
}










/*
Column(
        children: [
          Material(
            color: AppColors.surface,
            child: TabBar(
              controller: _tabController,
              isScrollable: true,
              labelStyle: AppTextStyles.labelSmall,
              unselectedLabelStyle: AppTextStyles.labelSmall,

              tabs: [
                Tab(text: 'Temel Gida'),
                Tab(text: 'Atistirmalik'),
                Tab(text: 'Meyve& Sebze'),
                Tab(text: 'Et,Tavuk & Balik'),
                Tab(text: 'Sut Urunleri'),
                Tab(text: 'Su & Icecek'),
                Tab(text: 'Kahvaltilik'),
                Tab(text: 'Tab'),
              ],
            ),
          ),

          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                Column(
                  children: [
                    // Chips
                    Container(
                      height: AppSizes.xxl,
                      decoration: BoxDecoration(color: AppColors.surface),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        padding: EdgeInsets.symmetric(horizontal: AppSizes.md),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          spacing: 10,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          // spacing: 10,
                          children: [
                            RawChip(
                              selected: true,
                              showCheckmark: false,
                              color: WidgetStatePropertyAll(AppColors.primary),

                              shape: StadiumBorder(),
                              labelStyle: AppTextStyles.withColor(
                                AppTextStyles.labelSmall,
                                AppColors.onPrimary,
                              ),
                              // padding: EdgeInsets.zero,
                              // labelPadding: EdgeInsets.only(left: 10, right: 10, top: 2, bottom: 2),
                              label: Text('Peynir'),
                              visualDensity: VisualDensity(vertical: -4, horizontal: -2),
                              onSelected: (value) {},
                            ),
                            RawChip(
                              selected: true,
                              showCheckmark: false,
                              color: WidgetStatePropertyAll(AppColors.primary),
                              shape: StadiumBorder(),
                              labelStyle: AppTextStyles.withColor(
                                AppTextStyles.labelSmall,
                                AppColors.onPrimary,
                              ),
                              // padding: EdgeInsets.zero,
                              // labelPadding: EdgeInsets.only(left: 10, right: 10, top: 2, bottom: 2),
                              label: Text('Cikolata'),
                              visualDensity: VisualDensity(vertical: -4, horizontal: -2),
                              onSelected: (value) {},
                            ),
                            RawChip(
                              selected: true,
                              showCheckmark: false,
                              color: WidgetStatePropertyAll(AppColors.primary),
                              shape: StadiumBorder(),
                              labelStyle: AppTextStyles.withColor(
                                AppTextStyles.labelSmall,
                                AppColors.onPrimary,
                              ),
                              // padding: EdgeInsets.zero,
                              // labelPadding: EdgeInsets.only(left: 10, right: 10, top: 2, bottom: 2),
                              label: Text('Cips'),
                              visualDensity: VisualDensity(vertical: -4, horizontal: -2),
                              onSelected: (value) {},
                            ),
                            RawChip(
                              selected: true,
                              showCheckmark: false,
                              color: WidgetStatePropertyAll(AppColors.primary),
                              shape: StadiumBorder(),
                              labelStyle: AppTextStyles.withColor(
                                AppTextStyles.labelSmall,
                                AppColors.onPrimary,
                              ),
                              // padding: EdgeInsets.zero,
                              // labelPadding: EdgeInsets.only(left: 10, right: 10, top: 2, bottom: 2),
                              label: Text('Biskuvi'),
                              visualDensity: VisualDensity(vertical: -4, horizontal: -2),
                              onSelected: (value) {},
                            ),
                            RawChip(
                              selected: true,
                              showCheckmark: false,
                              color: WidgetStatePropertyAll(AppColors.primary),
                              shape: StadiumBorder(),
                              labelStyle: AppTextStyles.withColor(
                                AppTextStyles.labelSmall,
                                AppColors.onPrimary,
                              ),
                              // padding: EdgeInsets.zero,
                              // labelPadding: EdgeInsets.only(left: 10, right: 10, top: 2, bottom: 2),
                              label: Text('Kek'),
                              visualDensity: VisualDensity(vertical: -4, horizontal: -2),
                              onSelected: (value) {},
                            ),
                            RawChip(
                              selected: true,
                              showCheckmark: false,
                              color: WidgetStatePropertyAll(AppColors.primary),
                              shape: StadiumBorder(),
                              labelStyle: AppTextStyles.withColor(
                                AppTextStyles.labelSmall,
                                AppColors.onPrimary,
                              ),
                              // padding: EdgeInsets.zero,
                              // labelPadding: EdgeInsets.only(left: 10, right: 10, top: 2, bottom: 2),
                              label: Text('Cubuk Kraker'),
                              visualDensity: VisualDensity(
                                vertical: AppSizes.visualDensityVertical,
                                horizontal: AppSizes.visualDensityHorizontal,
                              ),
                              onSelected: (value) {},
                            ),
                            RawChip(
                              selected: true,
                              showCheckmark: false,
                              color: WidgetStatePropertyAll(AppColors.primary),
                              shape: StadiumBorder(),
                              labelStyle: AppTextStyles.withColor(
                                AppTextStyles.labelSmall,
                                AppColors.onPrimary,
                              ),
                              // padding: EdgeInsets.zero,
                              // labelPadding: EdgeInsets.only(left: 10, right: 10, top: 2, bottom: 2),
                              label: Text('Lokum'),
                              visualDensity: VisualDensity(vertical: -4, horizontal: -2),
                              onSelected: (value) {},
                            ),
                            RawChip(
                              selected: true,
                              showCheckmark: false,
                              color: WidgetStatePropertyAll(AppColors.primary),
                              shape: StadiumBorder(),
                              labelStyle: AppTextStyles.withColor(
                                AppTextStyles.labelSmall,
                                AppColors.onPrimary,
                              ),
                              // padding: EdgeInsets.zero,
                              // labelPadding: EdgeInsets.only(left: 10, right: 10, top: 2, bottom: 2),
                              label: Text('Sakiz'),
                              visualDensity: VisualDensity(vertical: -4, horizontal: -2),
                              onSelected: (value) {},
                            ),
                          ],
                        ),
                      ),
                    ),

                    // Space
                    SizedBox(height: AppSizes.spaceBtwItems),

                    // Products Card
                  ],
                ),
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


Wrap(
                          spacing: AppSizes.md,

                          // alignment: WrapAlignment.spaceAround,
                          children: [
                            Stack(
                              clipBehavior: Clip.none,
                              children: [
                                // Product Container
                                Container(
                                  constraints: BoxConstraints(
                                    minHeight: AppSizes.heightMin210,
                                    maxHeight: AppSizes.heightMax210,
                                    minWidth: AppSizes.widthMin150,
                                    maxWidth: AppSizes.widthMax150,
                                  ),
                                  decoration: BoxDecoration(
                                    color: AppColors.surface,
                                    borderRadius: BorderRadius.circular(AppSizes.borderRadiusMd),
                                  ),
                                ),
                                // Product Image
                                ConstrainedBox(
                                  constraints: BoxConstraints(
                                    minHeight: AppSizes.heightMin100,
                                    maxHeight: AppSizes.heightMax150,
                                    minWidth: AppSizes.widthMin150,
                                    maxWidth: AppSizes.widthMax150,
                                  ),
                                  child: Align(
                                    alignment: AlignmentGeometry.center,
                                    child: Image.asset(AppImageString.burger, fit: BoxFit.cover),
                                  ),
                                ),

                                // Product Texts
                                Positioned(
                                  top: AppSizes.productImageMinHeight,
                                  left: AppSizes.xs,
                                  width: AppSizes.width140,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        ProductData.products[index].productPrice.toString(),
                                        style: AppTextStyles.withColor(
                                          AppTextStyles.labelSmall,
                                          AppColors.primary,
                                        ),
                                      ),
                                      ProductData.products[index].productPriceKg ??
                                          Text(
                                            ProductData.products[index].productPriceKg.toString(),
                                            style: AppTextStyles.withColor(
                                              AppTextStyles.labelXsSmall,
                                              AppColors.primary,
                                            ),
                                          ),
                                      Text(
                                        ProductData.products[index].productDescriptions.toString(),
                                        softWrap: true,
                                        textAlign: TextAlign.start,
                                        maxLines: 2,
                                        style: AppTextStyles.withColor(
                                          AppTextStyles.labelXsSmall,
                                          AppColors.textSecondary,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                // Product Add Button
                                // AddProductButton(product: ProductData.products[index]),
                              ],
                            ),
                          ],
                        );

 */