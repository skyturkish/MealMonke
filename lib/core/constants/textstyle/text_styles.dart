import 'package:flutter/material.dart';
import 'package:shopping/core/constants/color/color_constants.dart';
import 'package:shopping/core/extension/context_extension.dart';

class TextStylesConstants extends TextStyle {
  static TextStyle metroPolis({required Color color, required BuildContext context}) => TextStyle(
      color: color,
      fontWeight: FontWeight.w600,
      fontFamily: "Metropolis",
      fontStyle: FontStyle.normal,
      fontSize: context.dynamicHeight(0.01895));

  static TextStyle textFieldTextStyle({required BuildContext context}) => TextStyle(
      color: const Color(0xffb6b7b7),
      fontWeight: FontWeight.w400,
      fontFamily: "Metropolis",
      fontStyle: FontStyle.normal,
      fontSize: context.dynamicHeight(0.01658));

  static TextStyle sideTextStyle({required BuildContext context}) => TextStyle(
      color: const Color(0xff7c7d7e),
      fontWeight: FontWeight.w500,
      fontFamily: "Metropolis",
      fontStyle: FontStyle.normal,
      fontSize: context.dynamicHeight(0.01658));

  static TextStyle authButtonTextStyle({required BuildContext context}) => TextStyle(
      color: const Color(0xffffffff),
      fontWeight: FontWeight.w500,
      fontFamily: "Metropolis",
      fontStyle: FontStyle.normal,
      fontSize: context.dynamicHeight(0.01421));

  static TextStyle titleTextStyle({required BuildContext context}) => TextStyle(
      color: const Color(0xff4a4b4d),
      fontWeight: FontWeight.w800,
      fontFamily: "Metropolis",
      fontStyle: FontStyle.normal,
      fontSize: context.dynamicHeight(0.035545023));

  static TextStyle buttonMediumTextStyle({required BuildContext context}) => TextStyle(
      color: ColorConstants.brightOrange,
      fontWeight: FontWeight.w700,
      fontFamily: "Metropolis",
      fontStyle: FontStyle.normal,
      fontSize: context.dynamicHeight(0.01658));

  static TextStyle buttomMediumTextStyleWhite({required BuildContext context}) => TextStyle(
      color: const Color(0xffffffff),
      fontWeight: FontWeight.w600,
      fontFamily: "Metropolis",
      fontStyle: FontStyle.normal,
      fontSize: context.dynamicHeight(0.01895));
}
