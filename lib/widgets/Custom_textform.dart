
import 'package:flutter/material.dart';


class CustomTextForm extends StatelessWidget {
  String? hintText;
  Widget? suffixIcon;
  Widget? prefix;
  TextEditingController? controller;
  CustomTextForm({super.key,
    this.prefix,
    this.controller,
    this.suffixIcon,
    this.hintText,

  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: double.infinity,
      decoration: BoxDecoration(
       border: Border.all(color: Colors.black,width: 1.5,),
        borderRadius: BorderRadius.circular(100),

      ),
      child: TextFormField(
        controller:controller ,
        decoration: InputDecoration(
          hintText: hintText,
          suffixIcon: suffixIcon,
          prefix: prefix,
          border: OutlineInputBorder(
            borderSide: BorderSide.none
          )
        ),


      ),
    );
  }
}