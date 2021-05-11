import 'package:flutter/material.dart';
import 'package:flutter_f1/models/catalog.dart';

class ItemWidget extends StatelessWidget {
  final Item items;

  const ItemWidget({Key key, @required this.items})
      : assert(items != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.black,
      child: ListTile(
        onTap: () {
          print("${items.name} pressed");
        },
        leading: Image.asset(items.image),
        title: Text(items.name),
        subtitle: Text(items.decs),
        trailing: Text(
          "\$${items.price}",
          textScaleFactor: 1.5,
          style:
              TextStyle(color: Colors.deepPurple, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
