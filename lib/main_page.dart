import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trip/bar_items.dart';
import 'package:trip/search.dart';
import 'package:trip/widgets/my_page.dart';

import 'mainHomePAge.dart';

class Main_Page extends StatefulWidget {
  const Main_Page({Key? key}) : super(key: key);

  @override
  State<Main_Page> createState() => _Main_PageState();
}

class _Main_PageState extends State<Main_Page> {
  List pages=[
    MainHomePage(),
    Detail(),
    Google_Map(),
    MyPage(),
  ];
  int currentIndex=0;
  void onTap(int index){
    setState(() {
       currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],

      bottomNavigationBar: BottomNavigationBar(

        type: BottomNavigationBarType.fixed,
        onTap: onTap,
        currentIndex: currentIndex,
        selectedItemColor: Colors.black54,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        elevation: 0,
        items:[
          BottomNavigationBarItem(label:"home",icon: Icon(Icons.apps)),
          BottomNavigationBarItem(label:"Main",icon: Icon(Icons.bar_chart_sharp)),
          BottomNavigationBarItem(label:"Search",icon: Icon(Icons.search)),
          BottomNavigationBarItem(label:"me",icon: Icon(Icons.person))


        ]
      ),

    );
  }
}
