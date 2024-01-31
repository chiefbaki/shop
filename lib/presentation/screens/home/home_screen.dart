import 'package:flutter/material.dart';
import 'package:shop/data/model/category_model.dart';
import 'package:shop/presentation/widgets/widgets.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static const String routeName = '/home';
  
  @override
  _HomeScreenState createState() => _HomeScreenState();

  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (_) => const HomeScreen(),
    );
  }
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();

    // Убираем все предыдущие экраны из стека навигации
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Navigator.popUntil(context, (route) => route.isFirst);
    });
  }

@override
Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: Colors.white,
    appBar: const CustomAppBar(),
    body: Column(
      children: [
        const SizedBox(height: 10),
        MainSearchBar(
          onPressed: (){
            print('Search bar tapped');
            showSearch(context: context,
             delegate: CustomSearchDelegate(),
             );
          },
        ),
        CarouselSlider(
          options: CarouselOptions(
            aspectRatio: 2.0,
            enlargeCenterPage: true,
            enableInfiniteScroll: false,
            enlargeStrategy: CenterPageEnlargeStrategy.height,
            initialPage: 2,
          ),
          items: Category.categories
              .map((category) => HeroCarouselCard(category: category))
              .toList(),
        ),
      ],
    ),
    bottomNavigationBar: const CustomNavBar(),
  );
}
}

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