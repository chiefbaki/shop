import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/presentation/routes/app_router.dart';
import 'package:shop/provider/favorite_list_provider.dart';
import 'package:shop/provider/shopping_card_provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ShoppingCardProvider(),
        ),
        ChangeNotifierProvider(create: (context) => FavoriteProvider())
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter().config(),
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            appBarTheme:
                const AppBarTheme(color: Colors.white, elevation: 0.5)),
      ),
    );
  }
}
