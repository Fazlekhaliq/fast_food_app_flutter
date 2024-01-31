import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:super_foodoo/widgets/Custom_text.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(text: "Deliver now",fontWeight: FontWeight.w400,
            fontSize: 13,),
            Row(
              children: [
                CustomText(text: "Madni Town",fontWeight: FontWeight.w500,
                  fontSize: 15,),
                Icon(Icons.keyboard_arrow_up_rounded),

              ],
            )
          ],
        ),
        Container(
          height: 37,
          width: 75,
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.circular(25)
          ),
          child: Row(
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage("assets/Briefcase.png")
                  )
                ),

              ),
              Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(

                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage("assets/image 2.png")
                    )
                ),

              )
            ],
          ),
        )
      ],
    );
  }
}
