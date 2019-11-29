import 'package:flutter/material.dart';
import 'package:flutter_provider/models/product.dart';


class Products with ChangeNotifier {
  List<Product> _items = [];

  List<Product> get items {
    return [..._items];
  }

  void addProduct(value) {
//    _items.add(value);
    notifyListeners();
  }
}
