import 'package:flutter/material.dart';
import 'package:shop/data/model/product_model.dart';

class ShoppingCardProvider extends ChangeNotifier {
  List<Product> listOfModel = [];
  double total = 0;
  double sum() {
    double sum2 = 0;
    for (var i = 0; i < listOfModel.length; i++) {
      sum2 += listOfModel[i].price * listOfModel[i].quantity;
    }

    return sum2;
  }

  void addCard(Product model) {
    bool res = listOfModel.any((element) => element.id == model.id);
    print(model.quantity);
    if (res) {
      listOfModel.firstWhere((element) => element.id == model.id).quantity++;
      print(model.quantity);
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
