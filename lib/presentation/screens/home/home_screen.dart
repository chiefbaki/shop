import 'package:flutter/material.dart';
import 'package:shop/data/model/banner_model.dart';
import 'package:shop/presentation/screens/home/custom_search_delegate.dart';
import 'package:shop/presentation/widgets/category.dart';
import 'package:shop/presentation/widgets/list_of_products.dart';
import 'package:shop/presentation/widgets/widgets.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:shop/resources/resources.dart';

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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: MainSearchBar(
              onPressed: () {
                print('Search bar tapped');
                showSearch(
                  context: context,
                  delegate: CustomSearchDelegate(),
                );
              },
            ),
          ),
          CarouselSlider(
            options: CarouselOptions(
              aspectRatio: 2.0,
              enlargeCenterPage: true,
              enableInfiniteScroll: false,
              enlargeStrategy: CenterPageEnlargeStrategy.height,
              initialPage: 2,
            ),
            items: BannerCategory.categories
                .map((category) => HeroCarouselCard(category: category))
                .toList(),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              "Category",
              style: TextStyle(
                  fontSize: 17.0,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 57, 63, 66)),
            ),
          ),
          const SizedBox(height: 13),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildProductCategory(
                    image: Image(
                      image: AssetImage(Images.apparel),
                      height: 27,
                      width: 27,
                    ),
                    name: "Apparel"),
                _buildProductCategory(
                    image: Image(
                      image: AssetImage(Images.school),
                      height: 27,
                      width: 27,
                    ),
                    name: "School"),
                _buildProductCategory(
                    image: Image(
                      image: AssetImage(Images.sport),
                      height: 27,
                      width: 27,
                    ),
                    name: "Sport"),
                _buildProductCategory(
                    image: Image(
                      image: AssetImage(Images.electronic),
                      height: 27,
                      width: 27,
                    ),
                    name: "Electronic"),
                _buildProductCategory(
                    image: Image(
                      image: AssetImage(Images.all),
                      height: 27,
                      width: 27,
                    ),
                    name: "All"),
              ],
            ),
          ),
          Expanded(child: ListOfProducts())
        ],
      ),
      bottomNavigationBar: const CustomNavBar(),
    );
  }

  _buildProductCategory({required Image image, required String name}) =>
      Category(image: image, name: name);
}
