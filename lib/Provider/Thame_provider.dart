import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

final darkTheme = ThemeData(
    brightness: Brightness.dark,
    primarySwatch: Colors.red,
    backgroundColor: Colors.white,
    primaryColor: Colors.white,
    appBarTheme: AppBarTheme(
        backgroundColor: Colors.blue
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



final SystemMode = ThemeData();



class Thame_Changer extends ChangeNotifier{

  ThemeData? _themeData;
  ThemeMode? _themeMode;

  Thame_Changer(this._themeData,);


 ThemeData get getTheme =>_themeData!;
 ThemeMode get getThemee =>_themeMode!;



 setTheme (dynamic themeData){
   if(themeData==SystemMode){
     _themeData!=ThemeMode.system;
     print(_themeData);
   }else{
     _themeData = themeData;
   }
  print(themeData);
  notifyListeners();
 }



}