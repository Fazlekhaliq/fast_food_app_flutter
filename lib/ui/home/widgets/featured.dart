import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:super_foodoo/ui/search/search_screen.dart';
import 'package:super_foodoo/ui/search/widgets/gridviews.dart';
import 'package:super_foodoo/widgets/Custom_text.dart';

class Featured extends StatelessWidget {
  final String text;

  const Featured({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomText(text:text,fontSize: 20,fontWeight: FontWeight.w600, ),
        InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (_)=>SearchScreen()));
          },
          child: Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              shape: BoxShape.circle,

            ),
            child: Icon(Icons.arrow_forward),
          ),
        )
      ],
    );
  }
}
