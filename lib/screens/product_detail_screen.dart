import 'package:flutter/material.dart';

import '../models/product.dart';

class ProductDetailScreen extends StatelessWidget {
  static const routeName = '/product-detail';

  // final Product product;

  // ProductDetailScreen(this.product);

  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context).settings.arguments as String;
    //...
    return Scaffold(
      appBar: AppBar(title: Text('text')),
    );
  }
}
