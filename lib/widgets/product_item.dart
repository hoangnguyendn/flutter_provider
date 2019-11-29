import 'package:flutter/material.dart';
import 'package:flutter_provider/models/product.dart';

class ProductItem extends StatelessWidget {
  final Product product;

  const ProductItem({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridTile(child: Image.network(product.imageUrl));
  }
}
