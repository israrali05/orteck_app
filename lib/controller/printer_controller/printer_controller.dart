import 'package:flutter/material.dart';

class PrinterControoler extends ChangeNotifier {
  int _selectedValue = 1;

  int get selectedValue => _selectedValue;

  set selectedValues(int value) {
    _selectedValue = value;
    notifyListeners();
  }
}
