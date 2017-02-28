import 'package:ShoppingList/Product.dart';
import 'package:flutter/material.dart';
import 'package:ShoppingList/ShoppingList.dart';


void main() {
  runApp(new MaterialApp(
//    title: 'My app', // used by the OS task switcher
//    home: new MyScaffold(),

//    title: 'Flutter Tutorial',
//    home: new TutorialHome(),

    title: 'Shopping App',
    home: new ShoppingList(
      products: <Product>[
        new Product(name: 'Eggs'),
        new Product(name: 'Flour'),
        new Product(name: 'Chocolate chips'),
      ],
    ),
  ));
}