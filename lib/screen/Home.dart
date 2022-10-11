import 'package:flutter/material.dart';
import 'package:wbappium/model/statricVariable.dart';
import '../wigdet/Custrom_Column_gridview.dart';
import '../wigdet/Custrom_Row_grideview.dart';
import '../wigdet/Custrom_appbar.dart';
import '../wigdet/Custrom_cart.dart';
import '../wigdet/Header_text.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  
  @override
  State<Home> createState() => _HomeState();
}
class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Custrom_appbar("Welcome"),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft:Radius.circular(40) ,
                topRight: Radius.circular(40),
              ),
          ),
          // height: ,
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.only(
              top: 40,
              left: 20,
              right: 20
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Header_text("Browse Course By Category"),
                SizedBox(height: 10,),
                Custrom_Gridview( StaticVariable.Category.length,"first",40.0,griview),
                SizedBox(height: 10,),
                SizedBox(height: 10,),
                Header_text("Latest Couse"),
                SizedBox(height: 10,),
                Column_gritview_builder(3,1,100.0,Columngridview),
                SizedBox(height: 10,),
                Header_text("Mentors"),
                SizedBox(height: 10,),
                Custrom_Gridview( 20,"first",100.0,Mentors),
                SizedBox(height: 10,),
                Header_text("Recent Blog Posts"),
                SizedBox(height: 10,),
                Column_gritview_builder(10 ,1,100.0,Columngridview),
              ],
            ),
          ),
        ),
      ),
    );
  }
  Widget griview(String text,int index){
    return InkWell(
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.grey[800],
          borderRadius: BorderRadius.circular(50)
        ),
        child: Text(StaticVariable.Category[index],style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
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
  Widget Mentors(String text,int index){
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          // borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
                color: Colors.deepPurpleAccent.withOpacity(0.1),
                blurRadius: 5.0,
                spreadRadius: 3.0,
                offset: Offset(0,3)
            )
          ]
      ),
      child: Column(
        children: [
          ClipRRect(
            child: Image.asset("image/iphone.jpg",
              height: size.height*0.11,
              width: double.maxFinite,
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );
  }
}
