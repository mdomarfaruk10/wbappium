import 'package:flutter/material.dart';

import '../model/statricVariable.dart';
import '../wigdet/Custrom_Column_gridview.dart';
import '../wigdet/Custrom_Row_grideview.dart';
import '../wigdet/Custrom_appbar.dart';
import '../wigdet/Custrom_cart.dart';
import '../wigdet/Header_text.dart';
class search extends StatefulWidget {
  const search({Key? key}) : super(key: key);

  @override
  State<search> createState() => _searchState();
}

class _searchState extends State<search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[800],
      appBar: Custrom_appbar("Exlore"),
        body: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft:Radius.circular(20) ,
                topRight: Radius.circular(20),
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
                  TextFormField(

                    decoration: InputDecoration(
                      hintText: "Search for couse here",
                      contentPadding: const EdgeInsets.only(
                        left: 10.0,

                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black12,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(10)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black12,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(10)),
                      errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.red,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(10)),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black12,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      fillColor: Colors.black12,
                      filled: true,
                    ),
                    // onChanged: (String str){
                    //   final searchResult = GetPracticeUser().where((element) {
                    //     final practicedata = element.county!.toLowerCase();
                    //     final queryLoweCase = str.toLowerCase();
                    //     return practicedata.contains(queryLoweCase);
                    //   }).toList();
                    //   practiceusers=searchResult;
                    //   setState((){});
                    // },
                  ),
                  SizedBox(height: 10,),
                  Header_text("Browse Course By Category"),
                  SizedBox(height: 18,),
                  Custrom_Gridview( StaticVariable.Category.length,"first",40.0,griview),
                  SizedBox(height: 10,),
                  SizedBox(height: 10,),
                  Header_text("All available Courses"),
                  SizedBox(height: 10,),
                  Column_gritview_builder(10,1,100.0,Columngridview),
                  SizedBox(height: 10,),
                ],
              ),
            ),
          ),
        )

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
}
