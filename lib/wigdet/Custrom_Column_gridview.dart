import 'package:flutter/material.dart';
Widget Column_gritview_builder(int lenth,int count,double exten,returnvealue){
  return GridView.builder(
      physics: ScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: count,
        mainAxisExtent:  exten,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        childAspectRatio: 50,


      ),
      itemCount:lenth,
      itemBuilder: (context, index) {
        return returnvealue(index);
      });
}