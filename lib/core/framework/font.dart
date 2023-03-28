import 'package:flutter/material.dart';

class FontTheme {
  static const fontFamily = 'Mplus 1p Black';

  static TextStyle get body => const TextStyle(
        fontFamily: fontFamily,
        fontSize: 15,
        color: Colors.white60,
      );

  static TextStyle get bodyBold => const TextStyle(
        fontFamily: fontFamily,
        fontSize: 15,
        color: Colors.white60,
        fontWeight: FontWeight.bold,
      );

  static TextStyle get body2 => const TextStyle(
        fontFamily: fontFamily,
        fontSize: 18,
        color: Colors.white70,
      );

  static TextStyle get title => const TextStyle(
        color: Colors.white,
        fontSize: 30,
        fontFamily: fontFamily,
      );

  static TextStyle get subtitle => const TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontFamily: fontFamily,
      );
}
