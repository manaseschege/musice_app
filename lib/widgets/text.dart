import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String text;
  final Color color ;
  final double fontSize;
  final String fontFamily;
  final FontWeight fontWeight;
  final TextAlign textAlign;

  const TextWidget({super.key, required this.text, required this.color, required this.fontSize, required this.fontFamily, required this.fontWeight, required this.textAlign});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        color: Colors.black,
        fontSize: fontSize,
        fontFamily: "Montserrat",
        fontWeight: fontWeight,
      ),
    );
  }

}