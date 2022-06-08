import 'package:e_med/core/components/my_text_style.dart';
import 'package:e_med/core/constants/const_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyComponent {
  static Container myComponent() {
    return Container(
      height: 103,
      alignment: Alignment.center,
      child: Row(
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              border: Border.all(color: ConstColor.colorBlue, width: 1.5),
            ),
            alignment: Alignment.center,
            child: SvgPicture.asset(
              'assets/icons/pill.svg',
              color: ConstColor.colorBlue,
            ),
          ),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Text(
                    'Patacetomol',
                    style: MyTextStyle.textStyle(size: 18),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    '250 mg',
                    style: MyTextStyle.textStyle(
                      size: 12,
                      colors: ConstColor.colorDark60,
                    ),
                  ),
                ],
              ),
              Text(
                '1 pill * 2 times a day',
                style: MyTextStyle.textStyle(
                  size: 14,
                  colors: ConstColor.colorDark60,
                ),
              ),
              Text(
                '1 pill taken',
                style: MyTextStyle.textStyle(
                  size: 14,
                  colors: ConstColor.colorDark60,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
