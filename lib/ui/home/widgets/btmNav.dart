
import 'package:flutter/material.dart';
import 'package:super_foodoo/ui/fav_Screen.dart';
import 'package:super_foodoo/ui/search/search_screen.dart';

import 'package:super_foodoo/utils/images.dart';


import '../Home_Screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedTab = 0;

  final List _pages =const [

    HomeScreen(),
    SearchScreen(),
    FavScreen(),





  ];

  _changeTab(int index) {
    setState(() {
      _selectedTab = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(),

        backgroundColor: Colors.amberAccent.shade700,
        onPressed: () {

      },
     child: Container(
       height: 30,
       width: 30,
       decoration: BoxDecoration(
         image: DecorationImage(
           image: AssetImage("assets/Bag.png")
         )
       ),
     ),
      ),
      body: _pages[_selectedTab],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        backgroundColor: Colors.white,

        showUnselectedLabels: true,
        onTap: (index) => _changeTab(index),
        type: BottomNavigationBarType.fixed,


        // Fixed

         // <-- This works for fixed
        selectedItemColor: Colors.deepPurple,
        unselectedItemColor: Colors.grey,

        items: [

          BottomNavigationBarItem(
              activeIcon: Image.asset(homeImage,) ,
              icon: Image.asset(homeImage) , label: ""),
          BottomNavigationBarItem(


              activeIcon: Image.asset(searchImage,) , label: "", icon: Image.asset(searchImage)),
          BottomNavigationBarItem(
              activeIcon: Image.asset(favImage,) ,

              icon: Image.asset(favImage) , label: ""),
          BottomNavigationBarItem(
              activeIcon: Image.asset(accountImage,) ,

              icon: Image.asset(accountImage) , label: ""),


        ],

      ),
    );
  }
}
