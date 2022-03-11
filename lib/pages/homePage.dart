import 'package:application/data.dart';
import 'package:application/widgets/productWidget.dart';
import 'package:flutter/material.dart';

class homepage extends StatelessWidget {
  Function function;
  homepage(this.function);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Scaffold(
          body: GridView.builder(
              itemCount: products.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, crossAxisSpacing: 10, mainAxisSpacing: 10),
              itemBuilder: (context, index) {
                return productWidget(products[index], function);
              })),
    );
  }
}
