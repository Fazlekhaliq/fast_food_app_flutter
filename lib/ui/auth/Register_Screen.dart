import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:super_foodoo/ui/auth/Login_Screen.dart';
import 'package:super_foodoo/utils/images.dart';
import 'package:super_foodoo/widgets/Custom_text.dart';
import 'package:super_foodoo/widgets/Round_button.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0,vertical: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20,),
              Container(
                height: 300,
                width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(orderImage),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 30,),
              CustomText(text: "Welcome to Super Foodo",fontWeight: FontWeight.w600,
              fontSize: 24,),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: CustomText(text: "Lorem ipsum dolor sit amet consectetur. Ut cras pellentesque ",
                fontSize: 13,fontWeight: FontWeight.w400,),
              ),
              SizedBox(height: 30,),
              RoundButton(onTap: () {  }, text: 'Create account',
                color: Colors.amber,

              ),
              SizedBox(height: 15,),
              RoundButton(
                border: Border.all(
                  color: Colors.black,
                  width: 2
                ),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_)=>LoginScreen()));
                }, text: "Login",
              ),
            SizedBox(height: 20,),

            RichText(
                text: const TextSpan(
                    style: TextStyle(color: Colors.black),
                    children: [
                      TextSpan(text: 'By', style: TextStyle(fontWeight: FontWeight.w400,)),
                      TextSpan(text: ' Registering ', style: TextStyle(fontSize: 13,fontWeight: FontWeight.w600)),
                      TextSpan(text: ' or', style: TextStyle(fontWeight: FontWeight.w400,
                      fontSize: 13)),
                      TextSpan(text: ' Login ', style: TextStyle(fontSize: 13,fontWeight: FontWeight.w600)),
                      TextSpan(text: 'you have agreed to these', style: TextStyle(fontWeight: FontWeight.w400,
                          fontSize: 13))
                    ]
                )
            ),
              SizedBox(height: 5,),
              CustomText(text: "Terms and Conditions.",fontWeight: FontWeight.w600,fontSize: 13,color: Colors.black,)


            ],
          ),
        ),
      ),
    );
  }
}
