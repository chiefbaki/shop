// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i9;
import 'package:shop/presentation/screens/catalog/catalog_screen.dart' as _i1;
import 'package:shop/presentation/screens/dashboard.dart' as _i2;
import 'package:shop/presentation/screens/history/history_screen.dart' as _i3;
import 'package:shop/presentation/screens/home/home_screen.dart' as _i4;
import 'package:shop/presentation/screens/product/product_screen.dart' as _i5;
import 'package:shop/presentation/screens/profile/profile_screen.dart' as _i6;
import 'package:shop/presentation/screens/shopping_card_screen.dart' as _i7;
import 'package:shop/presentation/screens/wishlist/wishlist_screen.dart' as _i8;

abstract class $AppRouter extends _i9.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    CatalogRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.CatalogScreen(),
      );
    },
    DashboardRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.DashboardPage(),
      );
    },
    HistoryRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.HistoryScreen(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.HomeScreen(),
      );
    },
    ProductRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.ProductScreen(),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.ProfileScreen(),
      );
    },
    ShoppingCardRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.ShoppingCardScreen(),
      );
    },
    WishListRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.WishListScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.CatalogScreen]
class CatalogRoute extends _i9.PageRouteInfo<void> {
  const CatalogRoute({List<_i9.PageRouteInfo>? children})
      : super(
          CatalogRoute.name,
          initialChildren: children,
        );

  static const String name = 'CatalogRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i2.DashboardPage]
class DashboardRoute extends _i9.PageRouteInfo<void> {
  const DashboardRoute({List<_i9.PageRouteInfo>? children})
      : super(
          DashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i3.HistoryScreen]
class HistoryRoute extends _i9.PageRouteInfo<void> {
  const HistoryRoute({List<_i9.PageRouteInfo>? children})
      : super(
          HistoryRoute.name,
          initialChildren: children,
        );

  static const String name = 'HistoryRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i4.HomeScreen]
class HomeRoute extends _i9.PageRouteInfo<void> {
  const HomeRoute({List<_i9.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i5.ProductScreen]
class ProductRoute extends _i9.PageRouteInfo<void> {
  const ProductRoute({List<_i9.PageRouteInfo>? children})
      : super(
          ProductRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProductRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i6.ProfileScreen]
class ProfileRoute extends _i9.PageRouteInfo<void> {
  const ProfileRoute({List<_i9.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i7.ShoppingCardScreen]
class ShoppingCardRoute extends _i9.PageRouteInfo<void> {
  const ShoppingCardRoute({List<_i9.PageRouteInfo>? children})
      : super(
          ShoppingCardRoute.name,
          initialChildren: children,
        );

  static const String name = 'ShoppingCardRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i8.WishListScreen]
class WishListRoute extends _i9.PageRouteInfo<void> {
  const WishListRoute({List<_i9.PageRouteInfo>? children})
      : super(
          WishListRoute.name,
          initialChildren: children,
        );

  static const String name = 'WishListRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}
