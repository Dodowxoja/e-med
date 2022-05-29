import 'package:flutter/material.dart';

class MyTextStyle {
  static TextStyle myTextStyle({double? size, Color? colors}) {
    return TextStyle(fontSize: size, color: colors ?? Colors.black);
  }
}
