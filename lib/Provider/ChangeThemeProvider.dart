import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
class ThemeChanger with ChangeNotifier
{
  var _ThemeMode = ThemeMode.light;
  ThemeMode get themeMode => _ThemeMode;

  void setTheme (themeMode){
    _ThemeMode = themeMode;
    notifyListeners();
  }
}