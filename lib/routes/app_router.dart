import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:stork/features/Apps/Stork_Shop/cart/view/stork_shop_card_page.dart';
import 'package:stork/features/Apps/Stork_Shop/orders/view/stork_shop_orders_page.dart';
import 'package:stork/features/Apps/Stork_Shop/profile/view/stork_shop_profile_page.dart';
import 'package:stork/features/Apps/Stork_Shop/search/view/stork_shop_search_page.dart';
import 'package:stork/features/Apps/Stork_Shop/stork_shop.dart';
import 'package:stork/features/apps.dart';

import '../features/Apps/Stork_Shop/home/view/stork_shop_home_page.dart';

final _routerKey = GlobalKey<NavigatorState>();

class AppRoutes {
  static const String appHomePage = '/';
  static const String storkShopHomePage = '/stork-shop-home';
  static const String storkShopSearchPage = '/stork-shop-search';
  static const String storkShopCartPage = '/stork-shop-cart';
  static const String storkShopProfilePage = '/stork-shop-profile';
  static const String storkShopOffersPage = '/stork-shop-offers';
  static const String storkShopOrdersPage = '/stork-shop-orders';
}

final GoRouter router = GoRouter(
  navigatorKey: _routerKey,
  initialLocation: '/',
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) => StorkShop(navigationShell: navigationShell),
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: AppRoutes.storkShopHomePage,
              builder: (context, state) => StorkShopHomePage(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: AppRoutes.storkShopSearchPage,
              builder: (context, state) => StorkShopSearchPage(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: AppRoutes.storkShopCartPage,
              builder: (context, state) => StorkShopCardPage(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: AppRoutes.storkShopOrdersPage,
              builder: (context, state) => StorkShopOrdersPage(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: AppRoutes.storkShopProfilePage,
              builder: (context, state) => StorkShopProfilePage(),
            ),
          ],
        ),
      ],
    ),
    GoRoute(path: AppRoutes.appHomePage, builder: (context, state) => Apps()),
  ],
);
