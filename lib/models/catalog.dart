import 'package:flutter/cupertino.dart';

class item {
  final String id;
  final String name;
  final String decs;
  final num price;
  final String color;
  final String image;

  item({this.id, this.name, this.decs, this.price, this.color, this.image});
}

final produstd = [
  item(
      id: "f1",
      name: "Cycle",
      decs: "It is a cycle",
      price: 5000,
      color: "#33505a")
];
