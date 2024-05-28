import 'package:flutter/material.dart';
import 'package:themes/theme.dart';

class AppProvider extends ChangeNotifier {
  int counterValue;

  ThemeData _theme = lightTheme;

  AppProvider({
    this.counterValue = 0
  });

  void inc() {
    counterValue++;
    notifyListeners();
  }

  void dec() {
    counterValue--;
    notifyListeners();
  }

  ThemeData get themeData => _theme;

  void changeTheme() {
    if(_theme == lightTheme) {
      _theme = darkTheme;
    } else {
      _theme = lightTheme;
    }
    notifyListeners();
  }

}