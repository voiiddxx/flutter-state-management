import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  List<int> nums = [1];

  void setNewData() {
    int last = nums.last;
    nums.add(last + 1);
    notifyListeners();
  }
}
