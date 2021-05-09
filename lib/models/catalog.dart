import 'package:flutter/cupertino.dart';

class CatalogModel {
  static final item = [
    Item(
      id: "f1",
      name: "Cycle",
      decs: "It is a cycle",
      price: 5000,
      color: "#33505a",
      image:
          "https://images.unsplash.com/photo-1530263503756-b382295fd927?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80",
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
