import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:provider/provider.dart';
import 'package:shop/data/model/product_model.dart';
import 'package:shop/presentation/widgets/cart_icon_btn.dart';
import 'package:shop/provider/favorite_list_provider.dart';
import 'package:shop/provider/shopping_card_provider.dart';

@RoutePage()
class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key, this.model});
  final Product? model;

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<ShoppingCardProvider>(context);
    final favorite_provider = Provider.of<FavoriteProvider>(context);

    return Scaffold(
        appBar: AppBar(
          actions: [CardIcon(vm: vm)],
          leading: IconButton(
              onPressed: () {
                context.router.pop();
              },
              icon: const Icon(Icons.arrow_back_ios)),
          title: const Text("Details product"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            CarouselSlider.builder(
              options: CarouselOptions(
                enableInfiniteScroll: false,
                height: 286,
                viewportFraction: 1.0,
              ),
              itemCount: 3,
              itemBuilder:
                  (BuildContext context, int itemIndex, int pageViewIndex) {
                return Image.asset(
                  widget.model?.images[0] ?? "",
                  fit: BoxFit.cover,
                );
              },
            ),
            Container(
              width: 350,
              height: 49,
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 11),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.model?.name ?? "",
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                      Row(
                        children: [
                          Text(
                            widget.model?.price.toString() ?? "",
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const Text(" ( 219 people bought this )"),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(50)),
                    child: GestureDetector(
                      onTap: () =>
                          favorite_provider.toggleFavorite(widget.model),
                      child: Icon(
                        favorite_provider.isExist(widget.model)
                            ? Icons.favorite
                            : Icons.favorite_border_outlined,
                        color: Colors.red,
                        size: 35,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                children: [
                  const Text(
                    "Choose the color",
                    style: TextStyle(
                      color: Color(0xff939393),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _colors(0xffF5E3DF),
                      _colors(0xffECECEC),
                      _colors(0xffE4F2DF),
                      _colors(0xffD5E0ED),
                      _colors(0xff3E3D40),
                    ],
                  ),
                  Container(
                    width: 350,
                    height: 65,
                    margin: const EdgeInsets.symmetric(vertical: 12),
                    decoration: const BoxDecoration(
                      border: Border(
                        top: BorderSide(
                            width: 1.0,
                            color: Color(0xffF0F2F1)), // 1px top border
                        bottom: BorderSide(
                            width: 1.0,
                            color: Color(0xffF0F2F1)), // 1px bottom border
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 49,
                              height: 49,
                              decoration: BoxDecoration(
                                  color: Colors.grey[600],
                                  borderRadius: BorderRadius.circular(50)),
                              child: const Icon(Icons.apple),
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  "Apple store",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  "online 12 mins ago",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff939393),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        _followButton(),
                      ],
                    ),
                  ),
                  const Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ullamcorper, purus sit amet dictum consectetur, orci velit tincidunt justo, eget varius turpis eros in arcu. Sed hendrerit urna nec sagittis feugiat. Phasellus consequat elit eu mi bibendum, nec fringilla justo consequat. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Integer laoreet ligula vel quam malesuada, id aliquet ligula ultrices. Curabitur varius neque nec arcu tristique, non luctus ligula sollicitudin. Quisque non quam et tellus auctor tristique vel at quam. Suspendisse potenti. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nullam convallis bibendum dolor, sit amet varius est volutpat eu. Duis malesuada sodales magna id eleifend. Vestibulum tincidunt libero in dui scelerisque, in varius nulla facilisis. In vel imperdiet risus. Nunc cursus odio in nisl fringilla fermentum.",
                    overflow: TextOverflow.visible,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            SizedBox(
              width: double.infinity, // Takes the full screen width
              height: 102.0, // Set the desired height
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(167, 45),
                        padding: const EdgeInsets.fromLTRB(14, 15, 14, 15),
                        elevation: 1,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                        backgroundColor: const Color(0xff67C4A7)),
                    onPressed: () {
                      vm.addCard(widget.model!);
                    },
                    child: const Text(
                      'Add to Cart',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(167, 45),
                      padding: const EdgeInsets.fromLTRB(14, 15, 14, 15),
                      elevation: 1,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                        side: const BorderSide(
                          color: Color(0xFFD9D9D9),
                          width: 1,
                        ),
                      ),
                      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'But Now',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}

ElevatedButton _followButton() {
  return ElevatedButton(
    onPressed: () {},
    style: ElevatedButton.styleFrom(
      fixedSize: const Size(107, 37),
      backgroundColor: const Color(0xFFffffff),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
        side: const BorderSide(color: Color(0xFFD9D9D9), width: 1),
      ),
    ),
    child: const Text(
      "Follow",
      style: TextStyle(fontSize: 16, color: Colors.black),
    ),
  );
}

Container _colors(int clr) {
  return Container(
    width: 61,
    height: 41,
    decoration: BoxDecoration(
      color: Color(clr),
      borderRadius: BorderRadius.circular(8.0),
    ),
  );
}

CarouselSlider _imageCarousel() {
  return CarouselSlider.builder(
    options: CarouselOptions(
      enableInfiniteScroll: false,
      height: 286,
      viewportFraction: 1.0,
    ),
    itemCount: 3,
    itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) {
      return Image.asset(
        "assets/images/airpodmax.png",
        fit: BoxFit.cover,
      );
    },
  );
}

Container _priceText() {
  return Container(
    width: 350,
    height: 49,
    margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 11),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Air pods max by Apple",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            Row(
              children: [
                Text(
                  "\$ 1999,99",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(" ( 219 people bought this )"),
              ],
            ),
          ],
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.grey, borderRadius: BorderRadius.circular(50)),
          child: IconButton(
              iconSize: 28, onPressed: () {}, icon: Icon(Icons.heart_broken)),
        ),
      ],
    ),
  );
}
