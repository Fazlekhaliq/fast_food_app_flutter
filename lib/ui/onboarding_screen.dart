
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:super_foodoo/models/onbboard.dart';
import 'package:super_foodoo/ui/auth/Register_Screen.dart';
import 'package:super_foodoo/widgets/Custom_text.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final controller=PageController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 10),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
          
          
                  child: PageView.builder(
                    scrollDirection: Axis.horizontal,
          
                      physics: const BouncingScrollPhysics(),
          
                      itemCount: responseOnboarding.length,
                      itemBuilder: (_,index){
                        return Column(


                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,


                              children: [
                             TextButton(onPressed: (){

                             }, child: CustomText(
                               text: "Skip",
                               color: Colors.amberAccent.shade700,
                             ))
                            ],),
                            SizedBox(height: 30,),
                            Container(
                              height: 300,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(responseOnboarding[index].path),
          
                                  )
                              ),
                            ),
                            SizedBox(height: 50,),
                            InkWell(
                              onTap:(){
                                Navigator.push(context, MaterialPageRoute(builder: (_)=>RegisterScreen()));

                        },
                              child: CustomText(text: responseOnboarding[index].name,
                                fontWeight: FontWeight.w600,
                                fontSize: 26,),
                            ),
                            SizedBox(height: 20,),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 8.0),
                              child: CustomText(text: responseOnboarding[index].des,
                                fontWeight: FontWeight.w400,
                                fontSize: 14,),
                            ),
                            SizedBox(height: 30,),

                            SmoothPageIndicator(

                              controller: controller ,  // PageController
                              count:  4,
                              effect:  const WormEffect(
                                  dotHeight: 10,
                                  dotWidth: 10,
                                  dotColor: Colors.lightGreen
                              ),  // your preferred effect

                            )
          
                          ],
                        );
                      }),
                ),
              ),
            ],
          ),
        )
      ),
    );
  }
}
