import 'package:flutter/material.dart';
import 'package:shopping/core/constants/color/color_constants.dart';

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

  static const TextStyle authButtonTextStyle = TextStyle(
      color: Color(0xffffffff),
      fontWeight: FontWeight.w500,
      fontFamily: "Metropolis",
      fontStyle: FontStyle.normal,
      fontSize: 12.0);

  static const TextStyle titleTextStyle = TextStyle(
      color: Color(0xff4a4b4d),
      fontWeight: FontWeight.w800,
      fontFamily: "Metropolis",
      fontStyle: FontStyle.normal,
      fontSize: 30.0);

  static const TextStyle buttonMediumTextStyle = TextStyle(
      color: ColorConstants.brightOrange,
      fontWeight: FontWeight.w700,
      fontFamily: "Metropolis",
      fontStyle: FontStyle.normal,
      fontSize: 14.0);

  static const TextStyle buttomMediumTextStyleWhite = TextStyle(
      color: Color(0xffffffff),
      fontWeight: FontWeight.w600,
      fontFamily: "Metropolis",
      fontStyle: FontStyle.normal,
      fontSize: 16.0);
}
