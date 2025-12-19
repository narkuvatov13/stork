import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class StorkShopCardPage extends ConsumerStatefulWidget {
  const StorkShopCardPage({super.key});

  @override
  ConsumerState<StorkShopCardPage> createState() => _StorkShopCardPageState();
}

class _StorkShopCardPageState extends ConsumerState<StorkShopCardPage> {
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
