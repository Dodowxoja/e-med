import 'package:e_med/core/components/my_text_style.dart';
import 'package:e_med/core/constants/const_color.dart';
import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget with PreferredSizeWidget {
  Widget title;
  PreferredSize? bottom;
  IconThemeData? iconTheme;
  double preferedSizeHeight;
  Widget? leading;
  bool? centerTitle;
  BuildContext context;
  List<Widget>? action;
  double? elevation;

  MyAppBar(
      {Key? key,
      required this.title,
      this.centerTitle,
      this.bottom,
      this.iconTheme,
      required this.preferedSizeHeight,
      this.leading,
      required this.context,
      this.action,
      this.elevation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: leading,
      title: title,
      centerTitle: centerTitle,
      actions: action,
      backgroundColor: ConstColor.appBarBackgroundColor,
      elevation: elevation ?? 0,
      titleTextStyle: MyTextStyle.textStyle(),
      bottom: bottom,
      iconTheme: iconTheme,
    );
  }

  @override
  Size get preferredSize =>
      Size.fromHeight(MediaQuery.of(context).size.height * preferedSizeHeight);
}
