import 'package:flutter/material.dart';
import 'package:wbappium/model/statricVariable.dart';
import '../wigdet/Custrom_Column_gridview.dart';
import '../wigdet/Custrom_Row_grideview.dart';
import '../wigdet/Custrom_appbar.dart';
import '../wigdet/Custrom_cart.dart';
import '../wigdet/Header_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
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
                // Custrom_Gridview( 20,"first",100.0,Mentors),
                Mentors(),
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
  Widget Mentors(){
    // Size size = MediaQuery.of(context).size;
    return CarouselSlider(
        items: [

          Image.network(
              'https://www.imagediamond.com/blog/wp-content/uploads/2020/06/cartoon-boy-images-17-1.jpg'),
          Image.network(
              'https://www.imagediamond.com/blog/wp-content/uploads/2020/06/cartoon-boy-images-19-1.jpg'),
          Image.network(
              'https://www.imagediamond.com/blog/wp-content/uploads/2020/06/cartoon-boy-images-18-1.jpg'),
          Image.network(
              'https://www.imagediamond.com/blog/wp-content/uploads/2020/06/cartoon-boy-images-16-1.jpg'),
        ],
        options: CarouselOptions(
          height: 180.0,
          initialPage: 0,
          enlargeCenterPage: true,
          autoPlay: true,
          aspectRatio: 16 / 9,
          autoPlayCurve: Curves.fastOutSlowIn,
          enableInfiniteScroll: true,
          autoPlayAnimationDuration: Duration(milliseconds: 1200),
          viewportFraction: 0.8,
        ));
  }
}
