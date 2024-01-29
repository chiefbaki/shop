class ShoppingCardModel {
  final String model;
  final String variant;
  final double price;
  ShoppingCardModel(
      {required this.model, required this.variant, required this.price});
}

class ShoppingCardList{
  List<ShoppingCardModel> models = [
    ShoppingCardModel(model: "Air pods max by Apple", variant: "Grey", price: 199.99),
    ShoppingCardModel(model: "Monitor LG 22”inc 4K 120Fps", variant: "120 Fps", price: 299.99),
    ShoppingCardModel(model: "Earphones for monitor", variant: "Combo", price: 199.99),
  ];
}