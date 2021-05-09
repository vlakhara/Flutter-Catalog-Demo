import 'package:flutter/material.dart';
import 'package:flutter_f1/models/catalog.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({Key key, @required this.item})
      : assert(item != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.black,
      
      child: ListTile(
        leading: Image.asset(item.image),
        title: Text(item.name),
        subtitle: Text(item.decs),
        trailing: Text(
          "\$${item.price}",
          textScaleFactor: 1.5,
          style:
              TextStyle(color: Colors.deepPurple, fontWeight: FontWeight.bold),
              
        ),
      ),
    );
  }
}
