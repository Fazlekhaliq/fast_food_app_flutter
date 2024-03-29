import 'package:flutter/cupertino.dart';

class CustomText extends StatelessWidget {
  String text;
  double? fontSize;
  FontWeight? fontWeight;
  Color? color;

   CustomText({super.key,
     this.color,
     this.fontWeight,
     this.fontSize,
     required this.text,
   });

  @override
  Widget build(BuildContext context) {
    return Text(text,
    style: TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
      decoration: TextDecoration.none
    ),);
  }
}
