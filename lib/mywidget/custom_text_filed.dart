import 'package:flutter/material.dart';

class CustomTextFiled extends StatelessWidget {
  final TextEditingController textEditingController;
  final Color color;
  final double width;
  final IconData  icon;
  final bool obscureText;
  final TextInputType keyboardType;
final String hintText;
  CustomTextFiled(
      {@required this.textEditingController,@required this.hintText,
   @   required this.color,
   @   required this.width,
       this.icon,
      this.obscureText = false,
    @  required this.keyboardType});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Container(
          width: width,height: 50,

          child: TextField(textAlign: TextAlign.end,
            obscureText: obscureText,keyboardType: keyboardType,
            controller: textEditingController,
            decoration: InputDecoration(border: InputBorder.none,
              icon: Icon(icon),hintText: hintText
            ),
          ),
          decoration: BoxDecoration(border: Border.all(color: Colors.orange),borderRadius: BorderRadius.circular(10)),
        ),
      ),
    );
  }
}
