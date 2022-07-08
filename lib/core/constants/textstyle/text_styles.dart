import 'package:flutter/material.dart';
import 'package:shopping/core/constants/color/color_constants.dart';
import 'package:shopping/core/extension/context_extension.dart';

// 13 ---> 0.01658
//
class TextStylesConstants extends TextStyle {
  static TextStyle recentItemTextStyleMini({required BuildContext context}) => TextStyle(
        color: ColorConstants.wolfram,
        fontWeight: FontWeight.w400,
        fontFamily: "Metropolis",
        fontStyle: FontStyle.normal,
        fontSize: context.dynamicHeight(0.013546),
      );
  static TextStyle authButtonTextStyle({required BuildContext context}) => TextStyle(
      color: ColorConstants.white,
      fontWeight: FontWeight.w500,
      fontFamily: "Metropolis",
      fontStyle: FontStyle.normal,
      fontSize: context.dynamicHeight(0.01421));

  static TextStyle clickOrangeTextStyle({required BuildContext context}) => TextStyle(
      color: ColorConstants.brightOrange,
      fontWeight: FontWeight.w500,
      fontFamily: "Metropolis",
      fontStyle: FontStyle.normal,
      fontSize: context.dynamicHeight(0.01540));

  static TextStyle textFieldTextStyle({required BuildContext context}) => TextStyle(
      color: const Color.fromARGB(255, 147, 150, 150),
      fontWeight: FontWeight.w400,
      fontFamily: "Metropolis",
      fontStyle: FontStyle.normal,
      fontSize: context.dynamicHeight(0.01658));

  static TextStyle sideTextStyle({required BuildContext context}) => TextStyle(
      color: ColorConstants.namaraGrey,
      fontWeight: FontWeight.w500,
      fontFamily: "Metropolis",
      fontStyle: FontStyle.normal,
      fontSize: context.dynamicHeight(0.01658));

  static TextStyle buttonMediumTextStyle({required BuildContext context}) => TextStyle(
      color: ColorConstants.brightOrange,
      fontWeight: FontWeight.w700,
      fontFamily: "Metropolis",
      fontStyle: FontStyle.normal,
      fontSize: context.dynamicHeight(0.017));

  static TextStyle foodRegionTextStyle({required BuildContext context}) => TextStyle(
      color: ColorConstants.darkShadow,
      fontWeight: FontWeight.w700,
      fontFamily: "Metropolis",
      fontStyle: FontStyle.normal,
      fontSize: context.dynamicHeight(0.01658));

  static TextStyle buttomMediumTextStyleWhite({required BuildContext context}) => TextStyle(
      color: ColorConstants.white,
      fontWeight: FontWeight.w600,
      fontFamily: "Metropolis",
      fontStyle: FontStyle.normal,
      fontSize: context.dynamicHeight(0.01895));

  static TextStyle recentItemTextStyle({required BuildContext context}) => TextStyle(
      color: ColorConstants.darkShadow,
      fontWeight: FontWeight.w700,
      fontFamily: "Metropolis",
      fontStyle: FontStyle.normal,
      fontSize: context.dynamicHeight(0.022167));

  static TextStyle homePageMediumTitle({required BuildContext context}) => TextStyle(
      color: ColorConstants.darkShadow,
      fontWeight: FontWeight.w800,
      fontFamily: "Metropolis",
      fontStyle: FontStyle.normal,
      fontSize: context.dynamicHeight(0.02369));

  static TextStyle a({required BuildContext context}) => TextStyle(
      color: ColorConstants.darkShadow,
      fontWeight: FontWeight.w700,
      fontFamily: "EtihadAltis",
      fontStyle: FontStyle.normal,
      fontSize: context.dynamicHeight(0.02709));

  static TextStyle homePageLargeTitle({required BuildContext context}) => TextStyle(
      color: ColorConstants.darkShadow,
      fontWeight: FontWeight.w800,
      fontFamily: "Metropolis",
      fontStyle: FontStyle.normal,
      fontSize: context.dynamicHeight(0.02843));

  static TextStyle titleLargeTextStyle({required BuildContext context}) => TextStyle(
      color: ColorConstants.darkShadow,
      fontWeight: FontWeight.w800,
      fontFamily: "Metropolis",
      fontStyle: FontStyle.normal,
      fontSize: context.dynamicHeight(0.035545023));
}
