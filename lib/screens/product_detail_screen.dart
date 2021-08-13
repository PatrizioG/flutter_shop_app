import 'package:flutter/material.dart';
import 'package:flutter_shop_app/providers/products.dart';
import 'package:provider/provider.dart';

class ProductDetailScreen extends StatelessWidget {
  static const String routeName = '/product-detail';

  @override
  Widget build(BuildContext context) {

    final products = Provider.of<Products>(context, listen: false);
    final id = ModalRoute.of(context)?.settings.arguments as String;
    final product = products.findById(id);

    return Scaffold(
      appBar: AppBar(
        title: Text(product.title),
      ),
    );
  }
}
