import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
PreferredSizeWidget Custrom_appbar( String appBarTitle){
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
  // statusBarBrightness: Brightness.dark,
  // statusBarColor: Colors.black54,
  ));
  return AppBar(
    elevation: 00,
    // backgroundColor:Colors.grey[800] ,
    title: Text(appBarTitle,style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
  );
}