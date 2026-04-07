import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/product.dart';

class ProductService {
  Future<List<Product>> fetchProducts() async {
    final response =
        await http.get(Uri.parse('https://dummyjson.com/products'));

    if (response.statusCode == 200) {
      final data = json.decode(response.body);

      List productsJson = data['products'];

      return productsJson
          .map((json) => Product.fromJson(json))
          .toList();
    } else {
      throw Exception("Failed to load products");
    }
  }
}