import 'package:flutter/material.dart';
import 'package:shop/presentation/screens/shopping_card_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          color: Colors.white,
          elevation: 0.5
        )
      ),
      home: const ShoppingCardScreen(),
    );
  }
}