import 'dart:js_interop';

import 'package:flutter2/models/catalog.dart';

class CartModel {
  //catalog field
 late  CatalogModel _catalog;
  //collection of IDs -store IDs of each item
  final List<int> _itemIds = [];
  //Get catalog
  CatalogModel get catalog => _catalog;
  set catalog(CatalogModel newCatalog) {
    assert(newCatalog != null);
    _catalog = newCatalog;
  }

  //Get items in the cart
  List<Item> get items => _itemIds.map((id) => _catalog.getById(id)).toList();
  //get total price
  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);
  //add item
  void add(Item item) {
    _itemIds.add(item.id);
  }

  //remove items
  void remove(Item item) {
    _itemIds.remove(item.id);
  }
}
