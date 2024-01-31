import 'package:flutter/material.dart';
import 'package:shop/data/model/product_model.dart';

class ProductCard extends StatefulWidget {
  ProductCard({super.key, required this.product});
  final Product product;

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    List<String> images = widget.product.images;

    return Container(
      width: MediaQuery.of(context).size.width / 2,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.grey.withOpacity(0.1),
      ),
      child: Column(
        children: [
          Image(
            image: AssetImage(images[0]),
            fit: BoxFit.cover,
          ),
          Text(widget.product.name),
          Text(
            widget.product.price.toString(),
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          ElevatedButton(
            onPressed: () {
              // Обработчик нажатия кнопки
              // Можете добавить ваш код для обработки добавления в корзину
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.lightGreen, // Светло-зеленый цвет фона
              shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(15.0), // Радиус скругления углов
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'Add to cart',
                style: TextStyle(fontSize: 18.0, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
