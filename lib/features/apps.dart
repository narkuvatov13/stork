import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Apps extends StatelessWidget {
  const Apps({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            context.go('/stork-shop-home');
          },
          child: Text('data'),
        ),
      ),
    );
  }
}
