import 'package:flutter/material.dart';
import 'package:shop/presentation/widgets/widgets.dart';


class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});
  static const String routeName = '/product';
  static Route route(){
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (_)=> const ProductScreen(),
      );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(),
      bottomNavigationBar: CustomNavBar( ),
    );
  }
}