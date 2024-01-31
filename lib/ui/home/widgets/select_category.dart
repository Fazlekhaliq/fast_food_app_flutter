import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../models/category.dart';
import '../../../widgets/Custom_text.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,

      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: responseCategories.length,

          itemBuilder: (_, index){
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2.0),
              child: Column(
                children: [
                  PhysicalModel(
                    elevation: 20,
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(10),
                    shadowColor: Colors.grey.shade200,
                    child: Container(


                      height: 65,
                      width: 85,
                      decoration: BoxDecoration(
                        color: Colors.white,



                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage(responseCategories[index].path.toString()),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10,),
                  CustomText(text: responseCategories[index].name,
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  )
                ],
              ),
            );
          }),
    );
  }
}
