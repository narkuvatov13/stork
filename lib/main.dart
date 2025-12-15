import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stork/routes/app_router.dart';
import 'package:stork/utils/theme/theme.dart';

void main() async {
  // Oriontation Closed
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  runApp(
    ProviderScope(
      child: MaterialApp.router(
        routerConfig: router,
        title: 'Stork',
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.system,
        theme: YAppTheme.lightTheme,
        // darkTheme: YAppTheme.darkTheme,
      ),
    ),
  );
}
