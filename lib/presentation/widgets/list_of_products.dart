import 'package:flutter/material.dart';
import 'package:shop/data/model/my_products.dart';

import 'product_card_design.dart';

class ListOfProducts extends StatefulWidget {
  const ListOfProducts({super.key});

  @override
  State<ListOfProducts> createState() => _ListOfProductsState();
}

class _ListOfProductsState extends State<ListOfProducts> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: (100 / 127),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10),
      itemCount: MyProducts().allProducts.length,
      itemBuilder: (BuildContext context, int index) {
        final allProducts = MyProducts().allProducts[index];
        return ProductCardDesign(
          product: allProducts,
        );
      },
    );
  }
}
