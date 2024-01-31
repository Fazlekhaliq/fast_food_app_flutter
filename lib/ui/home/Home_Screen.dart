
import 'package:flutter/material.dart';
import 'package:super_foodoo/ui/home/widgets/Feauter_Screen.dart';
import 'package:super_foodoo/ui/home/widgets/featured.dart';
import 'package:super_foodoo/ui/home/widgets/header.dart';
import 'package:super_foodoo/ui/home/widgets/hotspots_screen.dart';
import 'package:super_foodoo/ui/home/widgets/search.dart';
import 'package:super_foodoo/ui/home/widgets/select_category.dart';

import 'widgets/btmNav.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 18.0,vertical: 10),
          child: Column(

            children: [
              Header(),
              SizedBox(height: 20,),
              Search(),
              SizedBox(height: 20,),
              CategoryScreen(),
              SizedBox(height: 10,),
              Featured(text: "Featured on Super Foodoo"),
              SizedBox(height: 10,),
              FeauturedScreen(),
              SizedBox(height: 10,),
              Featured(text: "Hot spots"),
              HotScreen(),


            ],
          ),
        )
      ),
    );
  }
}
