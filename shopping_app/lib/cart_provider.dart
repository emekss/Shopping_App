import 'package:flutter/material.dart';

class CartProvider extends ChangeNotifier {
  final List<Map<String, dynamic>> cart = [];

  void addProduct(Map<String, dynamic> products,
      ScaffoldFeatureController<SnackBar, SnackBarClosedReason> showSnackBar) {
    cart.add(products);
    notifyListeners();
  }

  void removeProduct(Map<String, dynamic> products) {
    cart.remove(products);
    notifyListeners();
  }
}
