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
      color: ColorConstants.textFieldColor,
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

  static TextStyle buttonMediumTextStyle({required BuildContext context}) => TextStyle(
      color: ColorConstants.brightOrange,
      fontWeight: FontWeight.w700,
      fontFamily: "Metropolis",
      fontStyle: FontStyle.normal,
      fontSize: context.dynamicHeight(0.01658));

  static TextStyle foodRegionTextStyle({required BuildContext context}) => TextStyle(
      color: ColorConstants.shoppingCartBlack,
      fontWeight: FontWeight.w700,
      fontFamily: "Metropolis",
      fontStyle: FontStyle.normal,
      fontSize: context.dynamicHeight(0.01658));

  static TextStyle authButtonTextStyle({required BuildContext context}) => TextStyle(
      color: ColorConstants.whiteTextField,
      fontWeight: FontWeight.w500,
      fontFamily: "Metropolis",
      fontStyle: FontStyle.normal,
      fontSize: context.dynamicHeight(0.01421));

  static TextStyle titleLargeTextStyle({required BuildContext context}) => TextStyle(
      color: ColorConstants.shoppingCartBlack,
      fontWeight: FontWeight.w800,
      fontFamily: "Metropolis",
      fontStyle: FontStyle.normal,
      fontSize: context.dynamicHeight(0.035545023));

  static TextStyle titleMediumTextStyle({required BuildContext context}) => TextStyle(
      color: ColorConstants.shoppingCartBlack,
      fontWeight: FontWeight.w800,
      fontFamily: "Metropolis",
      fontStyle: FontStyle.normal,
      fontSize: context.dynamicHeight(0.02369));

  static TextStyle clickOrangeTextStyle({required BuildContext context}) => TextStyle(
      color: ColorConstants.brightOrange,
      fontWeight: FontWeight.w500,
      fontFamily: "Metropolis",
      fontStyle: FontStyle.normal,
      fontSize: context.dynamicHeight(0.01540));

  static TextStyle buttomMediumTextStyleWhite({required BuildContext context}) => TextStyle(
      color: ColorConstants.whiteTextField,
      fontWeight: FontWeight.w600,
      fontFamily: "Metropolis",
      fontStyle: FontStyle.normal,
      fontSize: context.dynamicHeight(0.01895));

  static TextStyle homePageMediumTitle({required BuildContext context}) => TextStyle(
      color: ColorConstants.shoppingCartBlack,
      fontWeight: FontWeight.w800,
      fontFamily: "Metropolis",
      fontStyle: FontStyle.normal,
      fontSize: context.dynamicHeight(0.02369));

  static TextStyle homePageLargeTitle({required BuildContext context}) => TextStyle(
      color: ColorConstants.shoppingCartBlack,
      fontWeight: FontWeight.w800,
      fontFamily: "Metropolis",
      fontStyle: FontStyle.normal,
      fontSize: context.dynamicHeight(0.02843));

  static TextStyle recentItemTextStyle({required BuildContext context}) => TextStyle(
      color: ColorConstants.shoppingCartBlack,
      fontWeight: FontWeight.w700,
      fontFamily: "Metropolis",
      fontStyle: FontStyle.normal,
      fontSize: context.dynamicHeight(0.022167));

  static TextStyle recentItemTextStyleMini({required BuildContext context}) => TextStyle(
      color: ColorConstants.textFieldColor,
      fontWeight: FontWeight.w400,
      fontFamily: "Metropolis",
      fontStyle: FontStyle.normal,
      fontSize: context.dynamicHeight(0.013546));
}
