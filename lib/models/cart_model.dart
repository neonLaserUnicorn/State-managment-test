import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  int _items = 0;

  int get items => _items;

  void addItems() {
    _items++;
    notifyListeners();
  }

  void removeItems() {
    _items--;
    notifyListeners();
  }
}
