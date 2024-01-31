import 'package:flutter/material.dart';
import 'package:shop/presentation/widgets/widgets.dart';

class WishListScreen extends StatelessWidget {
  const WishListScreen({super.key});
  static const String routeName = '/wishlist';
  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (_) => const WishListScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: CustomNavBar(),
    );
  }
}
