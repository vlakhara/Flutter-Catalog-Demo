import 'package:flutter_f1/models/catalog.dart';

class CartModel {
  static final cartModel = CartModel._internal();
  CartModel._internal();

  factory CartModel() => cartModel;

  CatalogModel _catalog;

  //colection of IDs = store IDs

  final List<int> _itemIds = [];

  //to get catalog

  CatalogModel get catalog => _catalog;

  set catalog(CatalogModel newCatalog) {
    assert(newCatalog != null);
    _catalog = newCatalog;
  }

  //gey items in the cart

  List<Item> get items => _itemIds.map((id) => _catalog.getByID(id)).toList();

  //get total price

  num get totlaPrice =>
      items.fold(0, (total, current) => total + current.price);

  //add item

  void add(Item item) {
    _itemIds.add(item.id);
  }

  //remove item

  void remove(Item item) {
    _itemIds.remove(item.id);
  }
}
