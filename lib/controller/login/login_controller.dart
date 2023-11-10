import 'package:flutter/material.dart';

class DropdownProvider extends ChangeNotifier {
  String _selectedItem = 'English';

  String get selectedItem => _selectedItem;

  void setSelectedItem(String item) {
    _selectedItem = item;
    notifyListeners();
  }

  bool isChecked = false;
  void toggleCheckbox() {
    isChecked = !isChecked;
    notifyListeners();
  }

  bool passIsChecked = true;
  void passToggleCheckbox(){
    passIsChecked = !passIsChecked;
    notifyListeners();
  }
}
