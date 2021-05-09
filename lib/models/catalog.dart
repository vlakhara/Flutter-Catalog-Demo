import 'package:flutter/cupertino.dart';

class CatalogModel {
  static final item = [
    Item(
      id: "f1",
      name: "Cycle",
      decs: "It is a cycle",
      price: 5000,
      color: "#33505a",
      image: "assets/images/pic1.png",
    )
  ];
}

class Item {
  final String id;
  final String name;
  final String decs;
  final num price;
  final String color;
  final String image;

  Item({this.id, this.name, this.decs, this.price, this.color, this.image});
}
