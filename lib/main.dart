import 'package:application/models/Product.dart';
import 'package:application/pages/favouritepage.dart';
import 'package:application/pages/homePage.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'data.dart';

void main() {
  runApp(MaterialApp(home: screen()));
}

class screen extends StatefulWidget {
  @override
  State<screen> createState() => _screenState();
}

class _screenState extends State<screen> with SingleTickerProviderStateMixin {
  toggleLiked(Product product) {
    int index = products.indexOf(product);
    products[index].isLiked = !products[index].isLiked;
    setState(() {});
  }

  int index = 0;
  late TabController tabControler;
  initTabControler() {
    tabControler = TabController(length: 3, vsync: this);
    super.initState();
  }

  void initState() {
    super.initState();
    initTabControler();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: TabBarView(controller: tabControler, children: [
        homepage(toggleLiked),
        favouritepage(toggleLiked),
        Container(),
      ]),
      bottomNavigationBar: BottomNavigationBar(
        //To statr from this tab
        currentIndex: index,
        onTap: (tapedIndex) {
          this.index = tapedIndex;
          tabControler.animateTo(tapedIndex);
          setState(() {});
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'Favourite'),
          BottomNavigationBarItem(
              icon: Icon(Icons.perm_identity), label: 'profile'),
        ],
      ),
    );
  }
}
