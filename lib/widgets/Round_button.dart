import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:super_foodoo/widgets/Custom_text.dart';

class RoundButton extends StatelessWidget {
  Color? color;
  String text;
  void Function()? onTap;
  BoxBorder? border;

   RoundButton({super.key,required this.onTap,
    required this.text,
    this.color,
     this.border,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 55,
        width: double.infinity,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(100),
          border: border,

        ),
        child: Center(child: CustomText(text: text,fontSize: 17,fontWeight: FontWeight.w600,
          color: Colors.black,
        )),
      ),
    );
  }
}
