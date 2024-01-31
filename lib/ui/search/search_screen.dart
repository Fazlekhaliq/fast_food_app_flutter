import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:super_foodoo/ui/home/widgets/search.dart';
import 'package:super_foodoo/ui/search/widgets/gridviews.dart';
import 'package:super_foodoo/widgets/Custom_text.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: CustomText(
          text: "Hot spots",
          fontSize: 28,
          fontWeight: FontWeight.w600,
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 18.0),
        child: Column(

          children: [
            SizedBox(height: 10,),
            Search(),
            SizedBox(height: 10,),
            GridViewsScreen(),

          ],
        ),
      ),
    );
  }
}
