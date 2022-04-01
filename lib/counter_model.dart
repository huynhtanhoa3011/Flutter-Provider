import 'package:flutter/material.dart';

class CounterModel extends ChangeNotifier {
  int _count = 0;
  getCount() => _count;
  setCount(int count) => _count = count;

  void incrementCounter() {
    _count++;
    notifyListeners();
  }

  void decrementCounter() {
    _count--;
    notifyListeners();
  }
}

//Triển khai các model với ChangeNotifier và insert : notifyListeners(); vào các hàm thực thi
// ChangeNotifier cung cấp thông báo về sự thay đổi




















