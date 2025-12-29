import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:stork/features/Apps/Stork_Shop/Products/stork_shop_products_page.dart';
import 'package:stork/features/Apps/Stork_Shop/cart/view/stork_shop_card_page.dart';
import 'package:stork/features/Apps/Stork_Shop/error/views/error_view.dart';
import 'package:stork/features/Apps/Stork_Shop/offers/view/stork_shop_offers_page.dart';
import 'package:stork/features/Apps/Stork_Shop/profile/view/stork_shop_profile_page.dart';
import 'package:stork/features/Apps/Stork_Shop/search/view/stork_shop_search_page.dart';
import 'package:stork/features/Apps/Stork_Shop/stork_shop.dart';
import 'package:stork/features/apps.dart';
import 'package:stork/routes/app_router.dart';

import '../features/Apps/Stork_Shop/home/view/stork_shop_home_page.dart';

// Router Keys
final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _rootNavigatorHomeKey = GlobalKey<NavigatorState>(debugLabel: 'home');
final _rootNavigatorSearchKey = GlobalKey<NavigatorState>(debugLabel: 'search');
final _rootNavigatorCartKey = GlobalKey<NavigatorState>(debugLabel: 'cart');
final _rootNavigatorProfileKey = GlobalKey<NavigatorState>(debugLabel: 'profile');
final _rootNavigatorDealsKey = GlobalKey<NavigatorState>(debugLabel: 'deals');

final GoRouter router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: AppRoutes.appHomePage,
  errorBuilder: (context, state) => const ErrorPage(),
  debugLogDiagnostics: true,
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) => StorkShop(navigationShell: navigationShell),
      branches: [
        StatefulShellBranch(
          navigatorKey: _rootNavigatorHomeKey,
          routes: [
            GoRoute(
              path: StorkRoutes.storkShopHomePage,
              name: StorkRoutesName.storkShopHomePage,
              builder: (context, state) => StorkShopHomePage(),
              routes: [
                GoRoute(
                  pageBuilder: (context, state) =>
                      const NoTransitionPage(child: StorkShopProductsPage()),
                  path: StorkRoutes.storkShopProductsPage,
                  name: StorkRoutesName.storkShopProductsPage,
                  // builder: (context, state) => ,
                ),
              ],
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _rootNavigatorSearchKey,
          routes: [
            GoRoute(
              path: StorkRoutes.storkShopSearchPage,
              name: StorkRoutesName.storkShopSearchPage,
              builder: (context, state) => StorkShopSearchPage(),
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _rootNavigatorCartKey,
          routes: [
            GoRoute(
              path: StorkRoutes.storkShopCartPage,
              name: StorkRoutesName.storkShopCartPage,
              builder: (context, state) => StorkShopCartPage(),
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _rootNavigatorProfileKey,
          routes: [
            GoRoute(
              path: StorkRoutes.storkShopProfilePage,
              name: StorkRoutesName.storkShopProfilePage,
              builder: (context, state) => StorkShopProfilePage(),
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _rootNavigatorDealsKey,
          routes: [
            GoRoute(
              path: StorkRoutes.storkShopOffersPage,
              name: StorkRoutesName.storkShopOffersPage,
              builder: (context, state) => StorkShopOffersPage(),
            ),
          ],
        ),
      ],
    ),
    // Stork
    GoRoute(path: AppRoutes.appHomePage, builder: (context, state) => Apps()),
  ],
);
