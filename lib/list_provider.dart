import 'dart:collection';

import 'package:flutter/material.dart';

class NumbersList extends ChangeNotifier {
  Queue<int> numbers = Queue<int>.from([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]);
  int label = 0;

  void add() {
    if (numbers.isNotEmpty) {
      int first = numbers.removeFirst();
      numbers.add(first);
      label = numbers.last;
      notifyListeners();
    }
  }
}
