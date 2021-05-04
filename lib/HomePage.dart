import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  String name = "Vipul Lakhara";
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Container(
          child: Text("My name is $name"),
        ),
      ),
    );
  }
}
