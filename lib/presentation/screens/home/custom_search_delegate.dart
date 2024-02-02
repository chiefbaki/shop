import 'package:flutter/material.dart';
import 'package:shop/data/model/my_products.dart';
import 'package:shop/data/model/product_model.dart';
import 'package:shop/presentation/widgets/list_of_products.dart';
import 'package:shop/presentation/widgets/product_card.dart';

class CustomSearchDelegate extends SearchDelegate {
  List<Product> listOfProducts = MyProducts.allProducts;

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: const Icon(Icons.clear),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        // Закрываем клавиатуру
        FocusManager.instance.primaryFocus?.unfocus();
        // Закрываем поиск
        close(context, null);
      },
      icon: const Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    List<Product> matchQuery = [];
    for (var product in listOfProducts) {
      if (product.name.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(product);
      }
    }

    return Padding(
      padding: const EdgeInsets.all(13.0),
      child: GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: (100 / 127),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: matchQuery.length,
        itemBuilder: (BuildContext context, int index) {
          final allProducts = matchQuery[index];
          return ProductCard(
            product: allProducts,
          );
        },
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(13.0),
      child: ListOfProducts(),
    );
  }
}
