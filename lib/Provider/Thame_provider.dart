import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';



final darkTheme = ThemeData(
    brightness: Brightness.dark,
    primarySwatch: Colors.yellow,
    backgroundColor: Colors.white,
    primaryColor: Colors.white,
    appBarTheme: AppBarTheme(
        backgroundColor: Colors.red
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      unselectedItemColor:Colors.white ,
      selectedItemColor: Colors.blue,
    )
);
final ligtTheme = ThemeData(
    brightness: Brightness.light,
    primarySwatch:Colors.grey,
    backgroundColor: Colors.grey[800],
    appBarTheme: AppBarTheme(
        backgroundColor: Colors.grey[800]
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      unselectedItemColor:Colors.black ,
      selectedItemColor: Colors.blue,
    )
);
final greenTheme = ThemeData(
    brightness: Brightness.dark,
    primarySwatch: Colors.green,
    backgroundColor: Colors.green,
    primaryColor: Colors.green,
    appBarTheme: AppBarTheme(
        backgroundColor: Colors.green
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
     unselectedItemColor:Colors.white ,
     selectedItemColor: Colors.blue,
    )
);
final blueTheme = ThemeData(
    brightness: Brightness.light,
    primarySwatch:Colors.blue,
    backgroundColor: Colors.blue[800],
    appBarTheme: AppBarTheme(
        backgroundColor: Colors.blue[800]
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
     unselectedItemColor:Colors.black ,
     selectedItemColor: Colors.blue,
    )
);


class Thame_Changer extends ChangeNotifier{

 ThemeData? _themeData;
 Thame_Changer(this._themeData);
 ThemeData get getTheme =>_themeData!;

 setTheme (ThemeData themeData){
  _themeData = themeData;
  notifyListeners();
 }

}