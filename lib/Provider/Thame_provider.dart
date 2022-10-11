import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
class Thame_Changer extends ChangeNotifier{
 var _thameMode= ThemeMode.light;

 ThemeMode get themeMode =>_thameMode;
 void setTheme(themeMode){
  _thameMode=themeMode;
  notifyListeners();
 }
}