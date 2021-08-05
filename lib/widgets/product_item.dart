import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;

  ProductItem(this.id, this.title, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
          footer: GridTileBar(
            title: Text(
              title,
              textAlign: TextAlign.center,
            ),
            backgroundColor: Colors.black87,
            leading: IconButton(
              onPressed: null,
              icon: Icon(Icons.favorite),
              color: Theme.of(context).accentColor,
            ),
            trailing: IconButton(
              onPressed: null,
              icon: Icon(Icons.shopping_cart),
              color: Theme.of(context).accentColor,
            ),
          ),
          child: Image.network(
            imageUrl,
            fit: BoxFit.cover,
          )),
    );
  }
}
