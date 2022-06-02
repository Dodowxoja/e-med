import 'package:flutter/material.dart';

class MyTextStyle {
  static TextStyle myTextStyle({double? size, Color? colors}) {
    return TextStyle(fontSize: size ?? 14, color: colors ?? Colors.black);
  }
}
