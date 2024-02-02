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
    MyProducts model = MyProducts();
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: (100 / 127),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10),
      itemCount: model.allProducts.length,
      itemBuilder: (BuildContext context, int index) {
        final allProducts = model.allProducts[index];
        return ProductCard(
          product: allProducts,
        );
      },
    );
  }
}
