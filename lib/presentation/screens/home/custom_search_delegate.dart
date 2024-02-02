import 'package:flutter/material.dart';
import 'package:shop/data/model/my_products.dart';
import 'package:shop/data/model/product_model.dart';
import 'package:shop/presentation/widgets/list_of_products.dart';

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
    return ListOfProducts();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return ListOfProducts();
  }
}
