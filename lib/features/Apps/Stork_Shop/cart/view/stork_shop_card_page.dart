import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class StorkShopCartPage extends ConsumerStatefulWidget {
  const StorkShopCartPage({super.key});

  @override
  ConsumerState<StorkShopCartPage> createState() => _StorkShopCartPageState();
}

class _StorkShopCartPageState extends ConsumerState<StorkShopCartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text('Card Pages')));
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
