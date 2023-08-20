import 'package:flutter/foundation.dart';

class BottomNavBarProvider with ChangeNotifier{
  int _index = 0;

  String _groupVal = "male";

  String get groupVal => _groupVal;

  void updateRadio(String newValue){
    _groupVal = newValue;
    notifyListeners();
  }

  int get index => _index;

  void updateIndex(int newIndex){
    _index = newIndex;
    notifyListeners();
  }
}