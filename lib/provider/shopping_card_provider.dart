import 'package:flutter/material.dart';
import 'package:shop/data/model/product_model.dart';

class ShoppingCardProvider extends ChangeNotifier {

  Product getModel(Product el){
    return el;
  }

  List<Product> listOfModel = [];
  double total = 0;
  double sum() {
    for (var i = 0; i < listOfModel.length; i++) {
      total += listOfModel[i].price * listOfModel[i].quantity;
    }
    return total;
  }

  void addCard(Product model) {
    bool res = listOfModel.any((element) => element.id == model.id);
    if (res) {
      listOfModel.firstWhere((element) => element.id == model.id).quantity++;
    } else {
      listOfModel.add(model);
    }
    total = sum();
    debugPrint(total.toString());
    notifyListeners();
  }

  void removeCard(Product model) {
    bool res = listOfModel.any((element) => element.id == model.id);
    if (res) {
      var exist = listOfModel.firstWhere((element) => element.id == model.id);
      if (exist.quantity > 1) {
        exist.quantity--;
        total -= exist.price;
      } else {
        listOfModel.remove(exist);
        total -= exist.price;
      }
    } else {
      listOfModel.add(model);
    }
    total = sum();
    debugPrint(total.toString());
    notifyListeners();
  }
}
