import 'package:flutter/material.dart';

import '../wigdet/Custrom_Column_gridview.dart';
import '../wigdet/Custrom_appbar.dart';
import '../wigdet/Custrom_cart.dart';
class mycouse extends StatefulWidget {
  const mycouse({Key? key}) : super(key: key);

  @override
  State<mycouse> createState() => _mycouseState();
}

class _mycouseState extends State<mycouse> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Custrom_appbar("My Couses"),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft:Radius.circular(10) ,
              topRight: Radius.circular(10),
            ),
          ),
          // height: ,
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.only(
                top: 20,
                left: 20,
                right: 20
            ),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10,),
                Text("In Progress",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                SizedBox(height: 20,),
                Container(
                  height: 5,
                  width: double.infinity,
                  color: Colors.black,
                ),
                SizedBox(height: 20,),
                Column_gritview_builder(10,1,100.0,Columngridview),
                SizedBox(height: 10,),
              ],
            ),
          ),
        ),
      ),

    );
  }
  Widget Columngridview(int index){
    return  Card(
      child: Custom_card(
          context,"image/iphone.jpg"
      ),
    );
  }
}
