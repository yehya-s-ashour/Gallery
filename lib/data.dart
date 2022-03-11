import 'package:application/pages/favouritepage.dart';
import 'package:application/pages/homePage.dart';
import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

import 'models/Product.dart';

Function? function;
List pages = [
  homepage(function!),
  favouritepage(function!),
  Container(child: Text('page3')),
];

List<Product> products = [
  Product('Product.1', false, 'assets/images/post1.jpg', 10),
  Product('Product.2', false, 'assets/images/post2.jpg', 10),
  Product('Product.3', false, 'assets/images/post3.jpg', 10),
  Product('Product.4', false, 'assets/images/post4.jpg', 10),
  Product('Product.5', false, 'assets/images/post5.jpg', 10),
  Product('Product.6', false, 'assets/images/post6.jpg', 10),
  Product('Product.1', false, 'assets/images/post1.jpg', 10),
  Product('Product.2', false, 'assets/images/post2.jpg', 10),
  Product('Product.3', false, 'assets/images/post3.jpg', 10),
  Product('Product.4', false, 'assets/images/post4.jpg', 10),
  Product('Product.5', false, 'assets/images/post5.jpg', 10),
  Product('Product.6', false, 'assets/images/post6.jpg', 10),
];
