import 'package:application/models/Product.dart';
import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';

class productWidget extends StatelessWidget {
  Function function;
  Product product;
  productWidget(this.product, this.function);
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(product.imagePath),
        )),
        child: Align(
          alignment: Alignment.bottomRight,
          child: IconButton(
            onPressed: () {
              function(product);
            },
            icon: Icon(Icons.favorite),
            color: product.isLiked ? Colors.red : Colors.grey[300],
            iconSize: 45,
          ),
        ));
  }
}
