import 'package:flutter/cupertino.dart';
import 'package:flutter_provider/models/product.dart';
import 'package:flutter_provider/widgets/product_item.dart';

class ProductGrid extends StatelessWidget {
  final List<Product> products;

  const ProductGrid({Key key, this.products}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(10.0),
      itemCount: products.length,
      itemBuilder: (context, i) {
        return Container(
          child: ProductItem(
            product: products[i],
          ),
        );
      },
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10),
    );
  }
}
