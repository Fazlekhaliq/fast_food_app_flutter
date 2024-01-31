import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:super_foodoo/utils/apps_colors.dart';
import 'package:super_foodoo/widgets/Custom_text.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.searchColor,
        borderRadius: BorderRadius.circular(50),

      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/search.png"),

                      )
                  ),
                ),
                SizedBox(width: 5,),
                CustomText(text: "Search Super Foodoo"),
              ],
            ),
            Row(
              children: [
                Container(
                  height: 40,
                  width: 1,
                  color: Colors.black,
                ),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/Filter.png"),


                      )
                  ),
                )
              ],
            )
          ],
        ),
      ),
      
    );
  }
}
