import 'package:flutter/material.dart';
import 'package:shop/presentation/widgets/widgets.dart';


class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});
  static const String routeName = '/profile';
  static Route route(){
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (_)=> const ProfileScreen(),
      );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: CustomNavBar(),
    );
  }
}