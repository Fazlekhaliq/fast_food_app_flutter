import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:super_foodoo/widgets/Custom_text.dart';

import '../models/food.dart';

class FavScreen extends StatefulWidget {
  const FavScreen({super.key});

  @override
  State<FavScreen> createState() => _FavScreenState();
}

class _FavScreenState extends State<FavScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Column(

            children: [
              CustomText(text: "Featured on Super Foodoo",fontWeight: FontWeight.w600,
              fontSize: 22,),
          SizedBox(height: 20,),

          SizedBox(
            height: MediaQuery.of(context).size.height,


            child: ListView.builder(



                shrinkWrap: true,
                itemCount: responseFoods.length,
                scrollDirection: Axis.vertical,

                itemBuilder: (_,index){
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 200,
                      width: 260,
                      decoration: BoxDecoration(
                          color: Colors.amberAccent,
                          borderRadius: BorderRadius.circular(14),
                          image: DecorationImage(

                              image: AssetImage(responseFoods[index].path),
                              fit: BoxFit.cover
                          )


                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 30,
                            child: Container(

                              height: 20,
                              width: 120,
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.only(topRight: Radius.circular(10),bottomRight: Radius.circular(10)),
                                color: Colors.amberAccent.shade700,
                              ),
                              child: CustomText(text: responseFoods[index].serve,fontSize: 11,fontWeight: FontWeight.w500,),
                            ),
                          ),
                          const Positioned(
                              right: 2,
                              top: 10,
                              child: Icon(Icons.favorite_border,color: Colors.white,)),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              height: 60,
                              width: double.infinity,
                              decoration: const BoxDecoration(
                                color: Colors.black54,
                                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(14),bottomRight: Radius.circular(14)),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        CustomText(text: responseFoods[index].name,color: Colors.white,fontWeight:
                                        FontWeight.w500,
                                          fontSize: 18,),
                                        CustomText(text: responseFoods[index].information,color: Colors.white,fontWeight:
                                        FontWeight.w400,
                                          fontSize: 14,),

                                      ],

                                    ),
                                    CustomText(text: responseFoods[index].assessment,color: Colors.white,fontWeight:
                                    FontWeight.w500,
                                      fontSize: 18,),
                                  ],
                                ),
                              ),
                            ),
                          )

                        ],
                      ),


                    ),
                  );
                }),
          )
            ],
          ),
        ),
      )
    );
  }
}
