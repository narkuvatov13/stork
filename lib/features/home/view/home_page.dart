import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stork/utils/constants/app_colors.dart';
import 'package:stork/utils/constants/app_sizes.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        title: Text('Stork'),
        actions: [Icon(Icons.shopping_bag_outlined)],
      ),
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
    );
  }
}
