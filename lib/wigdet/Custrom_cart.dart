import 'package:flutter/material.dart';

Widget Custom_card(context,String img){
  Size size = MediaQuery.of(context).size;
  return Container(
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
              color: Colors.deepPurpleAccent.withOpacity(0.1),
              blurRadius: 5.0,
              spreadRadius: 3.0,
              offset: Offset(0,3)
          )
        ]
    ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          child: Image.asset(img,
            height: size.height*0.11,
            width:80,
            fit: BoxFit.fill,
          ),
        ),

        Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("learn python: The complete",style: TextStyle(fontWeight: FontWeight.bold),),
              Text("python Programming",style: TextStyle(fontWeight: FontWeight.bold),),
              SizedBox(height: 5,),
              Text("Free",style: TextStyle(color: Colors.blueGrey),),
              SizedBox(height: 2,),
              Text(" 5.0- 1 Student -04h 00m 00s",style: TextStyle(color: Colors.blueGrey),),
            ],
          ),
        )
      ],
    ),
  );
}