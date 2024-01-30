import 'package:shop/resources/resources.dart';

class ShoppingCardModel {
  final String model;
  final String variant;
  final double price;
  final String img;
  final int id;
  int quantity;
  ShoppingCardModel(
      {required this.id,
      required this.quantity,
      required this.img,
      required this.model,
      required this.variant,
      required this.price});
}

class ShoppingCardList {
  List<ShoppingCardModel> models = [
    ShoppingCardModel(
      id: 0,
      quantity: 1,
      img: Images.rectangle17,
      model: "Air pods max by Apple",
      variant: "Grey",
      price: 199.99,
    ),
    ShoppingCardModel(
        id: 1,
        quantity: 1,
        img: Images.rectangle25,
        model: "Monitor LG 22”inc 4K 120Fps",
        variant: "120 Fps",
        price: 299.99),
    ShoppingCardModel(
        id: 2,
        quantity: 1,
        img: Images.rectangle30,
        model: "Earphones for monitor",
        variant: "Combo",
        price: 199.99),
    ShoppingCardModel(
        id: 3,
        quantity: 1,
        img: Images.img1,
        model: "Earphones for monitor",
        variant: "Combo",
        price: 199.99),
    ShoppingCardModel(
        id: 4,
        quantity: 1,
        img: Images.img2,
        model: "Monitor LG 22”inc 4K 120Fps",
        variant: "Combo",
        price: 199.99),
    ShoppingCardModel(
        id: 5,
        quantity: 1,
        img: Images.earphones,
        model: "Monitor LG 22”inc 4K 120Fps",
        variant: "Combo",
        price: 199.99),
  ];
}
