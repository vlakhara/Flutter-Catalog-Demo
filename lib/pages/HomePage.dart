import 'package:flutter/material.dart';
import 'package:flutter_f1/models/catalog.dart';
import 'package:flutter_f1/widgets/drawer.dart';
import 'package:flutter_f1/widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  final String name = "Vipul Lakhara";
  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(1, (index) => CatalogModel.item[index]);
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: ListView.builder(
          padding: const EdgeInsets.all(16.0),
          itemCount: dummyList.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              items: CatalogModel.item[index],
            );
          }),
      drawer: MyDrawer(),
    );
  }
}
