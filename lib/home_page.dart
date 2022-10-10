import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:wbappium/screen/Home.dart';
import 'package:wbappium/screen/blog.dart';
import 'package:wbappium/screen/mycouse.dart';
import 'package:wbappium/screen/other.dart';
import 'package:wbappium/screen/search.dart';
class Home_page extends StatefulWidget {
  const Home_page({Key? key}) : super(key: key);

  @override
  State<Home_page> createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  int curpage = 0;
  List curPage = [
    Home(),
    search(),
    mycouse(),
    blog(),
    other()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(

        index: curpage,
        items: <Widget>[
          Icon(Icons.home, size: 30),
          Icon(Icons.search, size: 30),
          Icon(Icons.play_circle_outline, size: 30),
          Icon(Icons.library_books_sharp, size: 30),
          Icon(Icons.other_houses_outlined, size: 30),
        ],
        onTap: (index) {
          setState(() {
            curpage=index;
          });
        },
      ),
      body: curPage[curpage],
    );
  }
}
