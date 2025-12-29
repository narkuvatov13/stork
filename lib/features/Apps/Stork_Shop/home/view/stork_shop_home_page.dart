// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:stork/data/controllers/category_data.dart';
import 'package:stork/features/Apps/Stork_Shop/widgets/categories_widget/categorie_card_widget.dart';
import 'package:stork/features/Apps/Stork_Shop/widgets/categories_widget/categories_header_widget.dart';
import 'package:stork/features/Apps/Stork_Shop/widgets/search_bar_widget.dart';
import 'package:stork/routes/app_router.dart';
import 'package:stork/utils/constants/app_sizes.dart';
import 'package:stork/utils/constants/app_textstyles.dart';

class StorkShopHomePage extends ConsumerStatefulWidget {
  const StorkShopHomePage({super.key});

  @override
  ConsumerState<StorkShopHomePage> createState() => _StorkShopHomePageState();
}

class _StorkShopHomePageState extends ConsumerState<StorkShopHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(title: Text('Stork', style: AppTextStyles.h2), pinned: true),
          SliverPadding(
            padding: EdgeInsets.only(left: AppSizes.md, right: AppSizes.md, top: AppSizes.md),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(childCount: 1, (
                BuildContext context,
                int index,
              ) {
                return Column(
                  children: [
                    // Product Search
                    SizedBox(
                      width: double.infinity,
                      child: searchBarWiddget('Product Search ...', () {}),
                    ),

                    SizedBox(height: AppSizes.md),

                    // Categories Title
                    CategoriesHeaderWidget(
                      title: 'Categories',
                      actionText: 'All Products',
                      onTap: () {},
                    ),
                  ],
                );
              }),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.only(left: AppSizes.md, right: AppSizes.md),
            sliver: SliverGrid(
              delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
                final category = CategoryData.categories[index];
                return CategorieCard(
                  imagePath: category.imagePath,
                  title: category.title,
                  onTap: () {
                    // print(StorkRoutesName.storkShopProductsPage);
                    context.pushNamed(StorkRoutesName.storkShopProductsPage);
                  },
                );
              }, childCount: 10),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 0.75,
                crossAxisSpacing: AppSizes.sm,
              ),
            ),
          ),
        ],
      ),
    );
  }
}



//  CategorieCard(
//                           imagePath: 'assets/images/stork_images/categories/snacks.png',
//                           title: 'Et & Donmus Gidalar',
//                           // onTap: () {},
//                         ),
//                         CategorieCard(
//                           imagePath: 'assets/images/stork_images/categories/snacks.png',
//                           title: 'Et & Donmus Gidalar',
//                           // onTap: () {},
//                         ),
//                         CategorieCard(
//                           imagePath: 'assets/images/stork_images/categories/snacks.png',
//                           title: 'Et & Donmus Gidalar',
//                           // onTap: () {},
//                         ),
//                         CategorieCard(
//                           imagePath: 'assets/images/stork_images/categories/snacks.png',
//                           title: 'Et & Donmus Gidalar',
//                           // onTap: () {},
//                         ),


// Padding(
//         padding: EdgeInsets.all(AppSizes.md),
//         child: Column(
//           children: [
//             // Product Search
//             SizedBox(width: double.infinity, child: searchBarWiddget('Product Search ...', () {})),

//             SizedBox(height: AppSizes.md),
//             //Cattegories
//             // Categories Title
//             CategoriesHeaderWidget(title: 'Categories', actionText: 'All Products', onTap: () {}),
//             // Categories List
//             SizedBox(height: AppSizes.md),
//             CategorieCardLists(),
//           ],
//         ),
//       ),


/*

Getir’de KONUM AKIŞI (gerçek mimari)
Kullanıcı uygulamayı açar
        ↓
Konum izni kontrol edilir
        ↓
Anlık konum alınır (geolocator)
        ↓
Harita açılır (google_maps_flutter)
        ↓
Adres çözülür (geocoding)
        ↓
Kullanıcı adresi onaylar
        ↓
Backend’e gönderilir


      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: PageView(
              children: [
                Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(color: Colors.red),
                  child: Center(child: Text('AA')),
                ),
                Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(color: Colors.purple),
                  child: Center(child: Text('AA')),
                ),
                Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(color: Colors.green),
                  child: Center(child: Text('BB')),
                ),
                Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(color: Colors.red),
                  child: Center(child: Text('CC')),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 6,
            child: Row(
              children: [
                Card(
                  color: AppColors.primaryBackground,
                  // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                  child: Ink(
                    height: 200,
                    width: 150,
                    // padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/categories/atistirmalik.webp'),
                        alignment: Alignment.bottomLeft,
                      ),
                    ),
                    child: InkWell(
                      onTap: () {},
                      // splashColor: Colors.red,
                      // borderRadius: BorderRadius.circular(12),
                      customBorder: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                      // splashFactory: ,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: AppSizes.md,
                          vertical: AppSizes.sm,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [Text('ada'), Text('aaaa')],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Container(width: 200, height: 200, decoration: BoxDecoration(color: Colors.white)),
        ],
      ),


*/
