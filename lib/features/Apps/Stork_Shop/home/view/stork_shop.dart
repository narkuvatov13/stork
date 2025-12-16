import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class StorkShop extends ConsumerStatefulWidget {
  final StatefulNavigationShell navigationShell;
  const StorkShop({super.key, required this.navigationShell});

  final int count = 1;
  @override
  ConsumerState<StorkShop> createState() => _StorkShopState();
}

class _StorkShopState extends ConsumerState<StorkShop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        title: Text('Stork'),
        actions: [Icon(Icons.shopping_bag_outlined)],
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: 1,
        destinations: [
          NavigationDestination(icon: Icon(Icons.home), label: ''),
          NavigationDestination(icon: Icon(Icons.search), label: ''),
          NavigationDestination(icon: Icon(Icons.person), label: ''),
        ],
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

*/