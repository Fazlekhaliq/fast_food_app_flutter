import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:super_foodoo/ui/auth/forget/check_email.dart';
import 'package:super_foodoo/widgets/Custom_text.dart';
import 'package:super_foodoo/widgets/Custom_textform.dart';
import 'package:super_foodoo/widgets/Round_button.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0,vertical: 20),
          child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40,),
              CustomText(text: "Reset your password",
              fontSize: 24,fontWeight: FontWeight.w600,),
              SizedBox(height: 10,),
              CustomText(text: "Enter your registered email below",
                fontSize: 13,fontWeight: FontWeight.w400,),
              SizedBox(height: 100,),
              CustomTextForm(
                hintText: "Email",
              ),
              SizedBox(height: 40,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText(text: "Remember the password?",fontWeight: FontWeight.w400,fontSize: 13,),
                  CustomText(text: " Login",fontWeight: FontWeight.w600,fontSize: 13,)
                ],
              ),
              SizedBox(height: 100,),
              RoundButton(
                color: Colors.amberAccent.shade700,
                  onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_)=>CheckEmail()));
                  }, text: "Submit")
            ],
          ),
        ),
      ),
    );
  }
}
