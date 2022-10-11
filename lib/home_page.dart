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
  void _onItemTapped(int index) {
    setState(() {
      curpage = index;
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.play_circle_outline),
            label: 'mycouse',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_books_sharp),
            label: 'blog',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'settings',
          ),
        ],
        backgroundColor: Colors.blue,
        currentIndex: curpage,

        // selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
      body: curPage[curpage],
    );
  }
}
