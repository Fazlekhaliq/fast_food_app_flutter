import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:super_foodoo/widgets/Custom_text.dart';
import 'package:super_foodoo/widgets/Custom_textform.dart';
import 'package:super_foodoo/widgets/Round_button.dart';
import 'package:super_foodoo/widgets/other_button.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0,vertical: 10),
          child: SingleChildScrollView(
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
                SizedBox(height: 15,),
                CustomTextForm(
                  hintText: "Confirm Password",
                  suffixIcon: Icon(Icons.visibility_off_outlined,),
                ),
                SizedBox(height: 10,),

                SizedBox(height: 20,),
                RoundButton(
                    color: Colors.amberAccent.shade700,
                    onTap: (){}, text: "Sign up"),
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
                SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomText(text: "Already have an account?",fontWeight: FontWeight.w400,fontSize: 13,),
                    CustomText(text: " Log in",fontWeight: FontWeight.w600,fontSize: 13,)
                  ],
                )
            
              ],
            
            ),
          ),
        ),
      ),
    );
  }
}
