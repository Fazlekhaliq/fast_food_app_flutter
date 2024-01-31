import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:super_foodoo/widgets/Custom_text.dart';

class OtherButton extends StatelessWidget {
  Color? color;
  String text;
  void Function()? onTap;
  BoxBorder? border;
   ImageProvider<Object> image;

  OtherButton({super.key,required this.onTap,
    required this.text,
    this.color,
    this.border,
    required this.image,
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: image,
                )
              ),
            ),
            SizedBox(width: 7,),
            CustomText(text: text,fontSize: 16,fontWeight: FontWeight.w500,),

          ],
        )
      ),
    );
  }
}
