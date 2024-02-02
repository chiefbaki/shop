import 'package:flutter/material.dart';
import 'package:shop/presentation/screens/screens.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    print('Thus is route: ${settings.name}');

    switch (settings.name) {
      case '/':
        return HomeScreen.route();

      case HomeScreen.routeName:
        return HomeScreen.route();

      case CartScreen.routeName:
        return CartScreen.route();

      case ProductScreen.routeName:
        return ProductScreen.route();

      case WishListScreen.routeName:
        return WishListScreen.route();

      case CatalogScreen.routeName:
        return CatalogScreen.route();

      case HistoryScreen.routeName:
        return HistoryScreen.route();

      case ProfileScreen.routeName:
        return ProfileScreen.route();

      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
      settings:
          const RouteSettings(name: '/error', arguments: ObjectKey(HomeScreen)),
      fullscreenDialog: true,
      builder: (_) => Scaffold(
        appBar: AppBar(title: const Text('Error')),
      ),
    );
  }
}
