import 'package:flutter/material.dart';
Widget Custrom_button(String txt){
  return Padding(padding: EdgeInsets.all(10),
    child:Container(
        alignment: Alignment.center,
        height: 40,
        width: 300,
        decoration: BoxDecoration(
            color: Colors.blueAccent,
            borderRadius: BorderRadius.circular(20)
        ),
        child: Text(txt,style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold,fontSize: 16),)

    ),
  );
}