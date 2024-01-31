import 'package:flutter/material.dart';
import 'package:shop/presentation/widgets/widgets.dart';


class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});
  static const String routeName = '/history';
  static Route route(){
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (_)=> const HistoryScreen(),
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