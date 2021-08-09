import 'package:flutter/material.dart';
import 'package:flutter_shop_app/widgets/products_grid.dart';

enum FilterOptions {
  OnlyFavorites,
  ShowAll,
}

class ProductsOverviewScreen extends StatefulWidget {
  const ProductsOverviewScreen({Key? key}) : super(key: key);

  @override
  _ProductsOverviewScreenState createState() => _ProductsOverviewScreenState();
}

class _ProductsOverviewScreenState extends State<ProductsOverviewScreen> {

  var _showOnlyFavs = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyShop'),
        actions: [
          PopupMenuButton(
              onSelected: (FilterOptions selectedValue) {
                setState(() {
                  _showOnlyFavs = selectedValue == FilterOptions.OnlyFavorites;
                });
              },
              icon: Icon(Icons.more_vert),
              itemBuilder: (_) => [
                PopupMenuItem(
                  child: Text('Only Favorites'),
                  value: FilterOptions.OnlyFavorites,
                ),
                PopupMenuItem(
                  child: Text('Show All'),
                  value: FilterOptions.ShowAll,
                ),
              ])
        ],
      ),
      body: ProductsGrid(_showOnlyFavs),
    );
  }
}

