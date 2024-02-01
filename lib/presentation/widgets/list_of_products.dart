import 'package:flutter/material.dart';
import 'package:shop/data/model/my_products.dart';
import 'package:shop/presentation/widgets/product_card.dart';

class ListOfProducts extends StatefulWidget {
  const ListOfProducts({super.key});

  @override
  State<ListOfProducts> createState() => _ListOfProductsState();
}

class _ListOfProductsState extends State<ListOfProducts> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: (100 / 140),
          crossAxisSpacing: 12,
          mainAxisSpacing: 12),
      itemCount: MyProducts.allProducts.length,
      itemBuilder: (BuildContext context, int index) {
        final allProducts = MyProducts.allProducts[index];
        return ProductCard(
          product: allProducts,
        );
      },
    );
  }
}
