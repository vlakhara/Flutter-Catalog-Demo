import 'package:flutter/material.dart';
import 'package:flutter_f1/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var text;
    return Scaffold(
        backgroundColor: context.canvasColor,
        appBar: AppBar(
            backgroundColor: Colors.transparent, title: "cart".text.make()));
  }
}
