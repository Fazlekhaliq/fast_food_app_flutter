import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:super_foodoo/ui/offer_screen.dart';
import 'package:super_foodoo/widgets/Custom_text.dart';
import 'package:super_foodoo/widgets/Round_button.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [

            Container(
              height: 270,
              width: double.infinity,
              decoration:  BoxDecoration(
                color: Colors.amber.shade400,
                image: DecorationImage(
                  image: AssetImage("assets/Group (1).png"),
                  fit: BoxFit.fill
                )
              ),

            ),
            Align(
              alignment: Alignment.bottomCenter,

              child: Container(
                height: 470,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topRight: Radius.circular(31),
                  topLeft: Radius.circular(31)),

                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(height: 60,),
                      CustomText(text: "Mc Double",fontSize: 26,fontWeight: FontWeight.w600,
                      color: Colors.black,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40.0,vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.circle_outlined,color: Colors.red,),
                                CustomText(text: "50 min",fontWeight: FontWeight.w500,fontSize: 14,)
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.star_border_purple500_sharp,color: Colors.amber,),
                                CustomText(text: "4.6",fontWeight: FontWeight.w500,fontSize: 14,)
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.local_fire_department_outlined,color: Colors.red,),
                                CustomText(text: "290 cal",fontWeight: FontWeight.w500,fontSize: 14,)
                              ],
                            )
                          ],
                        ),
                      ),
                      CustomText(text: "\$20.99",fontSize: 26,fontWeight: FontWeight.w600,color: Colors.black,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18.0,vertical: 5),
                        child: Row(
                          children: [
                            CustomText(text: "Mc Double Comes With",fontWeight: FontWeight.w600,fontSize: 20,color: Colors.black,),
                  
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomText(text: "Ketchup",fontSize: 18,fontWeight: FontWeight.w500,color: Colors.black,),
                            Container(
                                width: 88,
                                height: 31.84,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: Colors.amberAccent.shade700
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(Icons.remove),
                                    Container(
                                      height: 20,
                                      width: 20,
                                      decoration: const BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.circle
                                      ),
                                      child: Center(child: CustomText(text: "1",fontSize: 14,)),
                                    ),
                                    Icon(Icons.add),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Divider(),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomText(text: "Cheese",fontSize: 18,fontWeight: FontWeight.w500,color: Colors.black,),
                            Container(
                              width: 88,
                              height: 31.84,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  color: Colors.amberAccent.shade700
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(Icons.remove),
                                    Container(
                                      height: 20,
                                      width: 20,
                                      decoration: const BoxDecoration(
                                          color: Colors.white,
                                          shape: BoxShape.circle
                                      ),
                                      child: Center(child: CustomText(text: "1",fontSize: 14,)),
                                    ),
                                    Icon(Icons.add),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Divider(),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18.0),
                        child: Row(
                          children: [
                            CustomText(text: "Frequently bought together",fontSize: 18,fontWeight: FontWeight.w600,
                            color: Colors.black,)
                          ],
                        ),
                      ),
                       SizedBox(height: 10,),
                       Padding(
                         padding: const EdgeInsets.symmetric(horizontal: 18.0,vertical: 3),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomText(text: "French Fries",fontWeight: FontWeight.w600,
                                fontSize: 18,
                                color: Colors.black,),
                                CustomText(text: "\$5.67",fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                  color: Colors.black,)
                              ],
                            ),
                            Container(
                                width: 103,
                                height: 90,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  image: AssetImage("assets/pngwing 4.png")
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.shade200,
                                    spreadRadius: 2,
                                    blurRadius: 10,
                                  )
                                ]
                              ),
                            )
                          ],
                                             ),
                       ),
                      SizedBox(height: 30,),
                     Material(child: Padding(
                       padding: const EdgeInsets.symmetric(horizontal: 18.0),
                       child: RoundButton(
                         color: Colors.amberAccent.shade700,
                           onTap: (){
                           Navigator.push(context, MaterialPageRoute(builder: (_)=>OfferScreen()));
                           }, text: "Add 1 to cart"),
                     ))

                  
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              left: 50,
              top: 100,
              child: Container(
                  width: 260,
                  height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/yyy@1 1 (2).png"),
                    fit: BoxFit.cover
                  )
                ),
              ),
            ),
            Positioned(

              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0,vertical: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,

                      ),
                      child: IconButton(onPressed: () {
                        Navigator.pop(context);
                      },
                        icon: Icon(Icons.arrow_back),
                      ),
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,

                      ),
                      child: IconButton(onPressed: () {
                        Navigator.pop(context);
                      },
                        icon: Icon(Icons.favorite_border),
                      ),
                    )
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
