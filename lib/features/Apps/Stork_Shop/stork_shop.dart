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
      bottomNavigationBar: _bottomAppBar(widget.navigationShell),
    );
  }
}

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
// new
Widget _bottomAppBar(StatefulNavigationShell navigationShell) {
  // BottomNavigationBar Item Names
  const String bottomNavigationItem0 = "Home";
  const String bottomNavigationItem1 = "Search";
  const String bottomNavigationItem2 = "Card";
  const String bottomNavigationItem3 = "Profile";
  const String bottomNavigationItem4 = "Deals";

  // BottomNavigationBar Item Icons
  const IconData bottomNavigationIcon0 = Icons.home;
  const IconData bottomNavigationIcon1 = Icons.search;
  const IconData bottomNavigationIcon2 = Icons.shopping_bag;
  const IconData bottomNavigationIcon3 = Icons.person;
  const IconData bottomNavigationIcon4 = Icons.card_giftcard;

  return BottomAppBar(
    color: AppColors.surface,
    padding: AppSizes.zero,
    height: AppSizes.bottomHeight,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _buildInkWellItem(
          bottomNavigationIcon0,
          bottomNavigationItem0,
          0,
          navigationShell: navigationShell,
        ),
        _buildInkWellItem(
          bottomNavigationIcon1,
          bottomNavigationItem1,
          1,
          navigationShell: navigationShell,
        ),
        _buildInkWellItem(
          bottomNavigationIcon2,
          bottomNavigationItem2,
          2,
          navigationShell: navigationShell,
        ), // Orta buton artık normal
        _buildInkWellItem(
          bottomNavigationIcon3,
          bottomNavigationItem3,
          3,
          navigationShell: navigationShell,
        ),
        _buildInkWellItem(
          bottomNavigationIcon4,
          bottomNavigationItem4,
          4,
          navigationShell: navigationShell,
        ),
      ],
    ),
  );
}

// old bottombar
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

//* Methods
Widget _buildInkWellItem(
  IconData icon,
  String label,
  int index, {
  required StatefulNavigationShell navigationShell,
}) {
  bool isSelected = navigationShell.currentIndex == index;

  return Expanded(
    child: InkResponse(
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
