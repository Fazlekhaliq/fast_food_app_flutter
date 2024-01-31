import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../models/hotpot.dart';
import '../../../widgets/Custom_text.dart';

class GridViewsScreen extends StatelessWidget {
  const GridViewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
        itemCount: responseHotCategory.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            mainAxisExtent: 180,
            crossAxisSpacing: 20,
            mainAxisSpacing: 5,
            childAspectRatio: 12,
      
      
      
          ),
          itemBuilder: (_,index){
            return Container(
              height: 133,
              width: 159,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade300,
                      blurRadius: 12,
                      spreadRadius: 6
                  )
                ],
              ),
              child: Stack(
                children: [
                  Positioned(
                    bottom: 0,
                    child: Container(
                      height: 133,
                      width: 159,
                      decoration:  BoxDecoration(
                          color: Colors.white,
      
      
                          borderRadius: BorderRadius.circular(5)
      
      
      
      
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
                    left: 5,
                    bottom: 75,
                    child: Container(
                      height: 108,
                      width: 143,
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
            );
          }
      ),
    );
  }
}
