import 'package:bloc_sample/models/product.dart';

class ProductService{

  static List<Product> products = [];
  static ProductService _singleton = ProductService._internal();
  factory ProductService(){
    return _singleton;
  }
  ProductService._internal();

  static  List<Product> getAll(){
    products.add(Product(1, "Acer Laptop", 28000));
    products.add(Product(2, "Asus Laptop", 32000));
    products.add(Product(3, "Casper Laptop", 25000));
    return products;
  }
}