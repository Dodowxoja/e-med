import 'package:flutter/material.dart';

class MyTextStyle {
  static TextStyle textStyle(
      {double size = 14,
      Color colors = Colors.black,
      FontWeight fontWeight = FontWeight.normal}) {
    return TextStyle(fontSize: size, color: colors, fontWeight: fontWeight);
  }
}
