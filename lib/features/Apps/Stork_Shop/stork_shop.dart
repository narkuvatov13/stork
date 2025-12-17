// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:stork/utils/constants/app_colors.dart';
import 'package:stork/utils/constants/app_sizes.dart';
import 'package:stork/utils/constants/app_textstyles.dart';

class StorkShop extends ConsumerStatefulWidget {
  final StatefulNavigationShell navigationShell;
  const StorkShop({super.key, required this.navigationShell});

  @override
  ConsumerState<StorkShop> createState() => _StorkShopState();
}

class _StorkShopState extends ConsumerState<StorkShop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: widget.navigationShell,
      bottomNavigationBar: BottomAppBar(
        color: AppColors.surface,
        padding: EdgeInsets.zero,
        height: 60,
        elevation: 10,
        shadowColor: Colors.red,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildInkWellItem(Icons.home, "Home", 0, navigationShell: widget.navigationShell),
            _buildInkWellItem(Icons.search, "Search", 1, navigationShell: widget.navigationShell),
            _buildInkWellItem(
              Icons.shopping_bag,
              "Card",
              2,
              navigationShell: widget.navigationShell,
            ), // Orta buton artık normal
            _buildInkWellItem(
              Icons.receipt_long,
              "Orders",
              3,
              navigationShell: widget.navigationShell,
            ),
            _buildInkWellItem(Icons.person, "Profile", 4, navigationShell: widget.navigationShell),
          ],
        ),
      ),
    );
  }
}

Widget _buildInkWellItem(
  IconData icon,
  String label,
  int index, {
  required StatefulNavigationShell navigationShell,
}) {
  bool isSelected = navigationShell.currentIndex == index;

  return Expanded(
    child: InkResponse(
      radius: 50,
      // borderRadius: BorderRadius.circular(50),
      // customBorder: StadiumBorder(),
      onTap: () {
        navigationShell.goBranch(index);
      },
      // Dalga efekti rengi
      highlightColor: AppColors.primary.withAlpha(20),
      splashColor: AppColors.primary.withAlpha(50),
      splashFactory: InkRipple.splashFactory,
      // customBorder: StadiumBorder(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: isSelected ? AppColors.primary : AppColors.textSecondary,
            size: AppSizes.iconXl,
          ),
          // const SizedBox(height: 4),
          Text(
            label,
            style: AppTextStyles.withColor(
              AppTextStyles.bottonNavigationBarLabel,
              isSelected ? AppColors.primary : AppColors.textSecondary,
            ),
          ),
        ],
      ),
    ),
  );
}

// TextStyle(
//               fontSize: AppSizes.iconXs,
//               color: isSelected ? AppColors.primary : AppColors.textSecondary,
//               fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
//             ),
//* Widgets

// App Bar Widget
AppBar _appBar() {
  return AppBar(
    foregroundColor: Colors.white,
    title: Text('Stork'),
    actions: [Icon(Icons.shopping_bag)],
  );
}

// BottomNavigationBar Widget
Widget bottomNavigationBar(StatefulNavigationShell navigationShell) {
  return BottomNavigationBar(
    onTap: (index) {
      navigationShell.goBranch(index);
    },
    currentIndex: navigationShell.currentIndex,
    type: BottomNavigationBarType.fixed,
    selectedIconTheme: IconThemeData(color: AppColors.primary),
    unselectedIconTheme: IconThemeData(color: AppColors.textSecondary),
    selectedItemColor: AppColors.primary,
    unselectedItemColor: AppColors.textSecondary,
    showSelectedLabels: true,
    showUnselectedLabels: true,
    selectedFontSize: 12.0,
    unselectedFontSize: 12.0,
    backgroundColor: AppColors.surface,
    selectedLabelStyle: AppTextStyles.bottonNavigationBarLabel,
    iconSize: AppSizes.xl,

    // backgroundColor: Colors.amber,
    items: [
      BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
      BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),

      BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: 'Card'),

      BottomNavigationBarItem(icon: Icon(Icons.receipt_long), label: 'Orders'),
      BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
    ],
  );
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

*/