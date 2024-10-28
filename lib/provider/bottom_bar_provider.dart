import 'package:flutter/cupertino.dart';

class BottomSheetProvider extends ChangeNotifier {
  int currentValue = 0;

  int get currentValues => currentValue;

  void setCurrentValue(int newValue) {
    currentValue = newValue;
    notifyListeners(); // Notify listeners that the state has changed
  }
}