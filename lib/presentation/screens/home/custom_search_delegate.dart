import 'package:flutter/material.dart';

class CustomSearchDelegate extends SearchDelegate {
  List<String> searchTerms = [
    'Iphone 12 pro max',
    'Camera fujifilm',
    'Tripod Mini',
    'Bluetooth speaker',
    'Drawing pad',
  ];

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
    FocusManager.instance.primaryFocus?.unfocus();
    List<String> matchQuery = [];
    for (var tech in searchTerms) {
      if (tech.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(tech);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // FocusManager.instance.primaryFocus?.unfocus();
    List<String> matchQuery = [];
    for (var tech in searchTerms) {
      if (tech.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(tech);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }
}
