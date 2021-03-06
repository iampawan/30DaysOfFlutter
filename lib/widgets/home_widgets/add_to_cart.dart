import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/cart.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

class AddToCart extends StatelessWidget {
  final Item catalog;
  AddToCart({
    Key key,
    this.catalog,
  }) : super(key: key);

  final _cart = CartModel();
  @override
  Widget build(BuildContext context) {
    bool isInCart = _cart.items.contains(catalog) ?? false;
    return ElevatedButton(
      onPressed: () {
        if (!isInCart) {
          isInCart = isInCart.toggle();
          final _catalog = CatalogModel();

          _cart.catalog = _catalog;
          _cart.add(catalog);
          // setState(() {});
        }
      },
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(context.theme.buttonColor),
          shape: MaterialStateProperty.all(
            StadiumBorder(),
          )),
      child: isInCart ? Icon(Icons.done) : Icon(CupertinoIcons.cart_badge_plus),
    );
  }
}
