import 'package:application/data.dart';
import 'package:application/widgets/productWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class favouritepage extends StatelessWidget {
  Function function;
  favouritepage(this.function);
  @override
  Widget build(BuildContext context) {
    return products.where((e) => e.isLiked == true).length > 0
        ? Padding(
            padding: const EdgeInsets.all(10.0),
            child: Scaffold(
              body: GridView.builder(
                  itemCount: products.where((e) => e.isLiked == true).length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      crossAxisCount: 2),
                  itemBuilder: (context, index) {
                    return productWidget(
                        products
                            .where((e) => e.isLiked == true)
                            .toList()[index],
                        function);
                  }),
            ),
          )
        : const Center(
            child: Text(
            'There is no favourites until now',
            style: TextStyle(fontSize: 22),
          ));
  }
}
