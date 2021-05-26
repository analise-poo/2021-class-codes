import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class BottomIndex with ChangeNotifier, DiagnosticableTreeMixin {
  int _index = 1;

  int get index => _index;

  void changeIndex(int index) {
    if (index >= 0 && index < 3) {
      _index = index;
    }
    notifyListeners();
  }
}
