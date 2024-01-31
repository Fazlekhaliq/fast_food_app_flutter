import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:super_foodoo/ui/auth/forget/reset_Screen.dart';
import 'package:super_foodoo/ui/auth/forget/update_screen.dart';
import 'package:super_foodoo/widgets/Custom_text.dart';
import 'package:super_foodoo/widgets/Custom_textform.dart';
import 'package:super_foodoo/widgets/Round_button.dart';

class RestScreen extends StatefulWidget {
  const RestScreen({super.key});

  @override
  State<RestScreen> createState() => _RestScreenState();
}

class _RestScreenState extends State<RestScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0,vertical: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [

              SizedBox(height: 40,),
              CustomText(text: "Reset your password",
                fontSize: 24,fontWeight: FontWeight.w600,),
              SizedBox(height: 30,),
              CustomText(text: "Enter your password below",
                fontSize: 13,fontWeight: FontWeight.w400,),
              SizedBox(height: 70,),

              CustomTextForm(
                hintText: "Password",
                suffixIcon: Icon(Icons.visibility_off_outlined,),
              ),
              SizedBox(height: 15,),
              CustomTextForm(
                hintText: "Confirm Password",
                suffixIcon: Icon(Icons.visibility_off_outlined,),
              ),
              SizedBox(height: 100,),
              RoundButton(
                  color: Colors.amberAccent.shade700,
                  onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_)=>UpdateScreen()));
                  }, text: "Reset password")
            ],
          ),
        ),
      ),
    );
  }
}
