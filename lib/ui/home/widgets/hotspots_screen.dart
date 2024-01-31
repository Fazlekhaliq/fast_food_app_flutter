


import 'package:flutter/material.dart';
import 'package:super_foodoo/models/hotpot.dart';
import 'package:super_foodoo/widgets/Custom_text.dart';

class HotScreen extends StatelessWidget {
  const HotScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,

      child: ListView.builder(
        itemCount: responseHotCategory.length,
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemBuilder: (_,index){
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Container(
            height: 120,
             width: 140,
            child: Stack(
              children: [
                Positioned(
                  bottom: 0,
                  child: Container(
                    height: 90,
                    width: 140,
                    decoration:  BoxDecoration(
                        color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade300,
                          blurRadius: 3,
                          spreadRadius: 1,
                          offset: Offset(0.0, 0.6)
                        )
                      ]



                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(height: 20,),
                        CustomText(text: responseHotCategory[index].name,fontWeight: FontWeight.w500,
                        fontSize: 15,),
                        CustomText(text: responseHotCategory[index].price,fontWeight: FontWeight.w500,
                          fontSize: 15,),
                      ],
                    ),

                  ),
                ),
                Positioned(
                  left: 20,
                  bottom: 40,
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration:  BoxDecoration(

                      image: DecorationImage(image:
                          AssetImage(responseHotCategory[index].path),
                        fit: BoxFit.contain
                      )

                    ),

                  ),
                )

              ],
            ),
          ),
        );
      }),
    );
  }
}
