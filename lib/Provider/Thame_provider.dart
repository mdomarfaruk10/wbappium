import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

// ThemeData light = ThemeData(
//     brightness: Brightness.light,
//     primarySwatch:Colors.grey,
//     backgroundColor: Colors.grey[800],
//     appBarTheme: AppBarTheme(
//         backgroundColor: Colors.grey[800]
//     ),
//     bottomNavigationBarTheme: BottomNavigationBarThemeData(
//       unselectedItemColor:Colors.black ,
//       selectedItemColor: Colors.blue,
//     )
// );
// ThemeData dark = ThemeData(
//     brightness: Brightness.dark,
//     primarySwatch: Colors.yellow,
//     backgroundColor: Colors.white,
//     primaryColor: Colors.white,
//     appBarTheme: AppBarTheme(
//         backgroundColor: Colors.red
//     ),
//     bottomNavigationBarTheme: BottomNavigationBarThemeData(
//       unselectedItemColor:Colors.white ,
//       selectedItemColor: Colors.blue,
//     )
// );

class Thame_Changer extends ChangeNotifier{
  // final String key="theme";
  //  SharedPreferences? prefs;
  //   bool? _darkTheme;
  //  bool get darkTheme =>_darkTheme!;
  // Thame_Changer() {
  //   _darkTheme = true;
  //   _loadFromPrefs();
  // }
  // toggleTheme(){
  //   _darkTheme= !_darkTheme!;
  //   _seveToPrefs();
  //   notifyListeners();
  // }
  // _initPrefs()async{
  //   if(prefs==null){
  //     prefs= await SharedPreferences.getInstance();
  //   }
  //
  // }
  // _loadFromPrefs()async{
  //   await _initPrefs();
  //   _darkTheme = prefs?.getBool(key) ?? true;
  //   notifyListeners();
  // }
  // _seveToPrefs()async{
  //   await _initPrefs();
  //   prefs?.setBool(key, _darkTheme!);
  //
  // }

 var _thameMode= ThemeMode.light;

 ThemeMode get themeMode =>_thameMode;
 void setTheme(themeMode){
  _thameMode=themeMode;

  notifyListeners();
 }
}