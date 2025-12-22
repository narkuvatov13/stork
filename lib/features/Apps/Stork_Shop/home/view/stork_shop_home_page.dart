import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stork/utils/constants/app_sizes.dart';
import 'package:stork/utils/widgets/search_bar_widget.dart';

class StorkShopHomePage extends ConsumerStatefulWidget {
  const StorkShopHomePage({super.key});

  @override
  ConsumerState<StorkShopHomePage> createState() => _StorkShopHomePageState();
}

class _StorkShopHomePageState extends ConsumerState<StorkShopHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(AppSizes.md),
        child: Column(
          children: [
            // Product Search
            searchBarWiddget('Product Search ...', () {}),

            //Cattegories
            
          ],
        ),
      ),
    );
  }
}

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
