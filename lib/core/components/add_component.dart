import 'package:e_med/core/components/my_text_style.dart';
import 'package:e_med/core/constants/const_color.dart';
import 'package:flutter/material.dart';

class AddComponent {
  static List<Container> addComponent(List<Container> addf) {
    if (addf.isEmpty) {
      return [
        Container(
          height: 347,
          alignment: Alignment.center,
          child: SizedBox(
            height: 87,
            width: 287,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "No medications",
                  style: MyTextStyle.myTextStyle(size: 26),
                ),
                Text(
                  'They will appear gere only when doctor adds them to your account',
                  textAlign: TextAlign.center,
                  style: MyTextStyle.myTextStyle(
                    size: 14,
                    colors: ConstColor.colorDark60,
                  ),
                ),
              ],
            ),
          ),
        ),
      ];
    } else {
      return addf;
    }
  }
}
