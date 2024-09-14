import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final counterChangeNotifierProvider =
    ChangeNotifierProvider<CounterChangeNotifier>(
  (ref) => CounterChangeNotifier(),
);

class CounterChangeNotifier extends ChangeNotifier {
  int counter = 0;

  void increment() {
    counter += 1;
    notifyListeners();
  }

  void decrement() {
    counter -= 1;
    notifyListeners();
  }
}
