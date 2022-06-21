import 'package:flutter/material.dart';

class TextStylesConstants extends TextStyle {
  static TextStyle metroPolis({required Color color, required double size}) => TextStyle(
        color: color,
        fontWeight: FontWeight.w600,
        fontFamily: "Metropolis",
        fontStyle: FontStyle.normal,
        fontSize: size,
      );
}
