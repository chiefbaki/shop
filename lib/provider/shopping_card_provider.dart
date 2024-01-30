import 'package:flutter/material.dart';
import 'package:shop/data/model/model.dart';

class ShoppingCardProvider extends ChangeNotifier {
  List<ShoppingCardModel> listOfModel = [];
  double total = 0;
  double sum() {
    for (var i = 0; i < listOfModel.length; i++) {
      total += listOfModel[i].price * listOfModel[i].quantity;
    }
    return total;
  }

  void addCard(ShoppingCardModel model) {
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

  void removeCard(ShoppingCardModel model) {
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
