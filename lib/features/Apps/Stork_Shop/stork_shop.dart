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
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        title: Text('Stork'),
        actions: [Icon(Icons.shopping_bag)],
      ),
      body: widget.navigationShell,

      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          widget.navigationShell.goBranch(index);
        },
        currentIndex: widget.navigationShell.currentIndex,
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
      ),
    );
  }

  NavigationBar navi(BuildContext context) {
    return NavigationBar(
      onDestinationSelected: widget.navigationShell.goBranch,
      selectedIndex: widget.navigationShell.currentIndex,
      backgroundColor: AppColors.surface,
      indicatorColor: Colors.transparent,
      // height: 76,
      maintainBottomViewPadding: false,
      surfaceTintColor: AppColors.surface,
      shadowColor: Colors.amberAccent,
      indicatorShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
      labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
      labelTextStyle: WidgetStateTextStyle.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return TextStyle(color: AppColors.primary);
        }
        return TextStyle(color: AppColors.textSecondary);
      }),
      destinations: [
        navigationBarMenu(
          context,
          index: 0,
          currentIndex: widget.navigationShell.currentIndex,
          label: "Home",
          icon: Icons.home,
        ),
        navigationBarMenu(
          context,
          index: 1,
          currentIndex: widget.navigationShell.currentIndex,
          label: "Search",
          icon: Icons.search,
        ),
        navigationBarMenu(
          context,
          index: 2,
          currentIndex: widget.navigationShell.currentIndex,
          label: "Card",
          icon: Icons.shopping_bag,
        ),
        navigationBarMenu(
          context,
          index: 3,
          currentIndex: widget.navigationShell.currentIndex,
          label: "Orders",
          icon: Icons.receipt_long,
        ),
        navigationBarMenu(
          context,
          index: 4,
          currentIndex: widget.navigationShell.currentIndex,
          label: "Profile",
          icon: Icons.person,
        ),
      ],
    );
  }
}

Widget navigationBarMenu(
  BuildContext context, {
  required int index,
  required int currentIndex,
  required String label,
  required IconData icon,
}) {
  return NavigationDestination(
    icon: Padding(
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 22),
      child: Icon(
        icon,
        size: 32,
        color: currentIndex == index ? AppColors.primary : AppColors.textSecondary,
      ),
    ),
    label: label,
  );
}
/*

BottomNavigationBar(
        selectedItemColor: AppColors.primary,
        unselectedItemColor: AppColors.textSecondary,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedFontSize: 12.0,
        unselectedFontSize: 12.0,
        iconSize: 26,
        elevation: 1,
        onTap: (index) {},
        type: BottomNavigationBarType.fixed,
        // backgroundColor: Colors.amber,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: AppColors.surface,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search, color: AppColors.textSecondary),
            label: 'Search',
            backgroundColor: AppColors.surface,
          ),
          BottomNavigationBarItem(
            icon: Opacity(opacity: 0, child: Icon(Icons.no_cell)),
            label: '', // Yazı da boş kalsın ki butonun altına girmesin
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag, color: AppColors.textSecondary),
            label: 'Card',
            backgroundColor: AppColors.surface,
          ),

          // BottomNavigationBarItem(
          //   icon: Icon(Icons.receipt_long, color: AppColors.textSecondary),
          //   label: 'Orders',
          //   backgroundColor: AppColors.surface,
          // ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: AppColors.textSecondary),
            label: 'Profile',
            backgroundColor: AppColors.surface,
          ),
        ],
      ),





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