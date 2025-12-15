import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
      body: Center(
        child: Container(width: 200, height: 200, decoration: BoxDecoration(color: Colors.white)),
      ),
    );
  }
}
