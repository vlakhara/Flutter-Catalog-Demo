import 'package:flutter/material.dart';
import 'package:flutter_f1/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  final String name = "Vipul Lakhara";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First APP"),
      ),
      body: Center(
        child: Container(
          child: Text("My name is $name"),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
