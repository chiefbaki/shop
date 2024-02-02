import 'package:flutter/material.dart';
import 'package:shop/presentation/widgets/widgets.dart';


class CartScreen extends StatelessWidget {
  const CartScreen({super.key});
  static const String routeName = '/cart';
  static Route route(){
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (_)=> const CartScreen(),
      );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: CustomNavBar( ),
    );
  }
}