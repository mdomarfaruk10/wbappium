import 'package:flutter/material.dart';

Widget Custrom_Gridview(int count,String? text,height, retur ){
  return SizedBox(
      width: double.infinity,
      height:height,
      child: GridView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: count ,
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 0.40/1.5,
            crossAxisSpacing: 10,
            mainAxisSpacing: 8
        ),
        itemBuilder: (context, index) {
          return retur(text,index);
        },
      ),
    );
}