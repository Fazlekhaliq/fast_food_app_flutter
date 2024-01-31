import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:super_foodoo/ui/auth/SignUP_Screen.dart';
import 'package:super_foodoo/ui/auth/forget/forget_Password.dart';
import 'package:super_foodoo/widgets/Custom_text.dart';
import 'package:super_foodoo/widgets/Custom_textform.dart';
import 'package:super_foodoo/widgets/Round_button.dart';
import 'package:super_foodoo/widgets/other_button.dart';

import '../home/widgets/btmNav.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0,vertical: 10),
          child: Column(
            children: [
              SizedBox(height: 20,),
              Container(
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/logo.png"),

                  )
                ),
              ),
                SizedBox(height: 30,),
              CustomTextForm(
                hintText: "Email",
              ),
              SizedBox(height: 15,),
              CustomTextForm(
                hintText: "Password",
                suffixIcon: Icon(Icons.visibility_off_outlined,),
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (_)=>ForgetPassword()));
                    },
                    child: CustomText(text: "Forget Password?",
                    fontSize: 15,fontWeight: FontWeight.w400,),
                  )
                ],
              ),
              SizedBox(height: 20,),
              RoundButton(
                color: Colors.amberAccent.shade700,
                  onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_)=>BottomNavBar()));
                  }, text: "Login"),
              SizedBox(height: 20,),
              Row(
                children: [
                Container(
                  height: 2,
                  width: 140,
                  color: Colors.black,
                ),
                  SizedBox(width: 4,),
                  CustomText(text: "OR",
                  fontWeight: FontWeight.w600,
                    fontSize: 15,
                  ),
                  SizedBox(width: 4,),
                  Container(
                    height: 2,
                    width: 140,
                    color: Colors.black,
                  ),
                ],
              ),
              SizedBox(height: 20,),
              OtherButton(
                border: Border.all(color: Colors.black),
                  onTap: (){},
                image: AssetImage("assets/google.png"),
                text: "Login with Google", ),
              SizedBox(height: 20,),
              OtherButton(
                border: Border.all(color: Colors.black),
                onTap: (){},
                image: AssetImage("assets/facebook.png"),
                text: "Login with Facebook", ),
              SizedBox(height: 70,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText(text: "Don’t have an account?",fontWeight: FontWeight.w400,fontSize: 13,),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (_)=>SignUpScreen()));
                    },
                      child: CustomText(text: " Sign up",fontWeight: FontWeight.w600,fontSize: 13,))
                ],
              )

            ],

          ),
        ),
      ),
    );
  }
}
