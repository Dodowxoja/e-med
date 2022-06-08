import 'package:e_med/core/components/my_text_style.dart';
import 'package:e_med/core/constants/const_color.dart';
import 'package:flutter/material.dart';

class MyAppBarAuth {
  static AppBar myAppBar(text, context) {
    Color colorBlue = ConstColor.colorBlueSystem;
    Color colorWhite = ConstColor.colorWhite;

    return AppBar(
      leadingWidth: 80,
      leading: InkWell(
        child: Row(
          children: [
            const SizedBox(width: 15),
            Icon(Icons.arrow_back_ios, color: colorBlue),
            Text(
              'Back',
              style: MyTextStyle.textStyle(colors: colorBlue),
            ),
          ],
        ),
        onTap: () {
          Navigator.pop(context);
        },
      ),
      title: Text(text, style: MyTextStyle.textStyle(size: 18)),
      centerTitle: true,
      elevation: 0.5,
      backgroundColor: colorWhite,
    );
  }
}
