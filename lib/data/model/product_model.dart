class Product {
  final int id;
  final String name;
  final String category;
  final List<String> images;
  final String description;
  final double price;
  final String variant;
  int quantity;

  Product({
    required this.name,
    required this.category,
    required this.images,
    required this.description,
    required this.price,
    required this.id,
    required this.quantity,
    required this.variant
  });
}
