import 'package:flutter/material.dart';

class TextStylesConstants extends TextStyle {
  static TextStyle metroPolis({required Color color, required double size}) => TextStyle(
        color: color,
        fontWeight: FontWeight.w600,
        fontFamily: "Metropolis",
        fontStyle: FontStyle.normal,
        fontSize: size,
      );

  static const TextStyle textFieldTextStyle = TextStyle(
      color: Color(0xffb6b7b7),
      fontWeight: FontWeight.w400,
      fontFamily: "Metropolis",
      fontStyle: FontStyle.normal,
      fontSize: 14.0);

  static const TextStyle sideTextStyle = TextStyle(
      color: Color(0xff7c7d7e),
      fontWeight: FontWeight.w500,
      fontFamily: "Metropolis",
      fontStyle: FontStyle.normal,
      fontSize: 14.0);
}
