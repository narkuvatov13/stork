import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:stork/features/Apps/Stork_Shop/home/view/stork_shop.dart';
import 'package:stork/features/apps.dart';

import '../features/Apps/Stork_Shop/home/view/stork_shop_home_page.dart';

final _routerKey = GlobalKey<NavigatorState>();

final GoRouter router = GoRouter(
  routes: [
    StatefulShellRoute.indexedStack(
      branches: [
        StatefulShellBranch(
          navigatorKey: _routerKey,
          routes: [
            GoRoute(
              name: 'stork',
              path: '/stork-shop',
              builder: (context, state) => StorkShopHomePage(),
            ),
          ],
        ),
      ],
      builder: (context, state, navigationShell) => StorkShop(navigationShell: navigationShell),
    ),
    GoRoute(path: '/', builder: (context, state) => Apps()),
  ],
);
