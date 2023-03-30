import 'package:flutter/material.dart';

class FontTheme {
  static const fontFamily = 'Mplus 1p Black';

  static TextStyle get titleCard => const TextStyle(
        fontFamily: fontFamily,
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 14,
      );

  static TextStyle get shortOverviewCard => const TextStyle(
        fontFamily: fontFamily,
        color: Colors.white54,
        fontSize: 12,
      );

  static TextStyle get date => const TextStyle(
        fontFamily: fontFamily,
        fontSize: 15,
        color: Colors.white70,
        fontWeight: FontWeight.bold,
      );

  static TextStyle get body => const TextStyle(
        fontFamily: fontFamily,
        fontSize: 15,
        color: Colors.white60,
      );

  static TextStyle get bodyBold => const TextStyle(
        fontFamily: fontFamily,
        fontSize: 15,
        color: Colors.white,
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
        fontWeight: FontWeight.bold,
      );

  static TextStyle get subtitle => const TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontFamily: fontFamily,
      );
}
