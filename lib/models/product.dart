class Product {
  String id;
  String name;
  double price;
  String image;

  Product({
    required this.id,
    required this.name,
    required this.price,
    required this.image,
  });

  // Factory method to create a Product from JSON
  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'].toString(),
      name: json['title'],
      price: (json['price']).toDouble(),
      image: json['thumbnail'],
    );
  }   
}