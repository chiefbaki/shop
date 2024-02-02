import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:shop/presentation/routes/app_router.gr.dart';

class CartIcon extends StatelessWidget {
  const CartIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.shopping_cart),
      onPressed: () {
        context.router.push(const ShoppingCardRoute());
      },
    );
  }
}
