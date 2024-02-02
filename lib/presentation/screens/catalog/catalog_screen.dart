import 'package:flutter/material.dart';
import 'package:shop/presentation/widgets/widgets.dart';


class CatalogScreen extends StatelessWidget {
  const CatalogScreen({super.key});
  static const String routeName = '/catalog';
  static Route route(){
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (_)=> const CatalogScreen(),
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