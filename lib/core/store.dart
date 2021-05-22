import 'package:flutter_f1/models/cart.dart';
import 'package:flutter_f1/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

// ignore: camel_case_types
class myStore extends VxStore {
  CatalogModel catalog;
  CartModel cart;

  myStore() {
    catalog = CatalogModel();
    cart = CartModel();
    cart.catalog = catalog; 
  }
}
