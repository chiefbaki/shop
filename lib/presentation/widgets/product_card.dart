import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/data/model/product_model.dart';
import 'package:shop/provider/shopping_card_provider.dart';

class ProductCard extends StatefulWidget {
  const ProductCard({super.key, required this.product});
  final Product product;

  @override
  State<ProductCard> createState() => _ProductCardState();
}


class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    List<String> images = widget.product.images;
    final vm = Provider.of<ShoppingCardProvider>(context);

    return Container(
      width: MediaQuery.of(context).size.width / 2,
      padding: const EdgeInsets.all(0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: const Color.fromARGB(255, 230, 230, 230).withOpacity(0.5),
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(255, 175, 175, 175).withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 2,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              context.router.push(ProductRoute());
            },
            child: Image(
              image: AssetImage(images[0]),
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 13.0),
            child: Row(
              children: [
                Flexible(
                  child: RichText(
                    overflow: TextOverflow.ellipsis,
                    text: TextSpan(
                      text: widget.product.name,
                      style: const TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Color.fromARGB(
                            255, 57, 63, 66), // Задайте желаемый цвет шрифта
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 13.0),
            child: Text(
              '\$' + widget.product.price.toString(),
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 13.0),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  vm.addCard(widget.product);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 103, 196, 167),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.0),
                  child: Text(
                    'Add to cart',
                    style: TextStyle(fontSize: 14.0, color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
