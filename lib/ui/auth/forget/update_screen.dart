import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:super_foodoo/ui/home/Home_Screen.dart';
import 'package:super_foodoo/ui/auth/forget/reset_Screen.dart';
import 'package:super_foodoo/widgets/Custom_text.dart';
import 'package:super_foodoo/widgets/Custom_textform.dart';
import 'package:super_foodoo/widgets/Round_button.dart';
import 'package:super_foodoo/ui/home/widgets/btmNav.dart';

class UpdateScreen extends StatefulWidget {
  const UpdateScreen({super.key});

  @override
  State<UpdateScreen> createState() => _UpdateScreenState();
}

class _UpdateScreenState extends State<UpdateScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0,vertical: 40),
          child: Column(

            children: [
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    color: Colors.amberAccent.shade700,
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage("assets/icon _email check outline_.png"),
                    )
                ),
              ),

              SizedBox(height: 40,),
              CustomText(text: "Check email",
                fontSize: 24,fontWeight: FontWeight.w600,),
              SizedBox(height: 30,),
              CustomText(text: "Please check your email to create a\n new password",
                fontSize: 13,fontWeight: FontWeight.w400,),
              SizedBox(height: 20,),



              SizedBox(height: 100,),
              RoundButton(
                  color: Colors.amberAccent.shade700,
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_)=>const BottomNavBar()));
                  }, text: "Continue")
            ],
          ),
        ),
      ),
    );
  }
}
