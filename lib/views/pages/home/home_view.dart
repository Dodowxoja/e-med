import 'package:e_med/core/components/add_component.dart';
import 'package:e_med/core/components/my_app_bar.dart';
import 'package:e_med/core/components/my_component.dart';
import 'package:e_med/core/widgets/my_table_widget.dart';
import 'package:e_med/core/components/my_text_style.dart';
import 'package:e_med/core/constants/const_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<Container> addf = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        centerTitle: true,
        context: context,
        preferedSizeHeight: 0.05,
        leading: Image.asset("assets/images/profile1.png"),
        title: Image.asset("assets/images/e-med_blue_min.png"),
        action: [
          IconButton(
            icon: SvgPicture.asset("assets/icons/bell.svg"),
            onPressed: () {},
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 24.0),
              child: Row(
                children: [
                  const SizedBox(width: 20),
                  Text(
                    "Today's medications",
                    style: MyTextStyle.textStyle(
                      size: 16,
                      colors: ConstColor.colorDark60,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24),
              child: Column(children: AddComponent.addComponent(addf)),
            ),
            //?Calendar
            const MyTableCalendar(),
            //?ADD NEW APPOINTMENT
            Padding(
              padding: const EdgeInsets.all(20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: ConstColor.colorBlue,
                  fixedSize: Size(MediaQuery.of(context).size.width, 54),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text('Add new appointment'),
                onPressed: () {
                  addf.add(MyComponent.myComponent());
                  setState(() {});
                },
              ),
            ),
            //?CLEAR APPOINTMENT
            Padding(
              padding: const EdgeInsets.all(20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: ConstColor.colorBlue,
                  fixedSize: Size(MediaQuery.of(context).size.width, 54),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text('Clear appointment'),
                onPressed: () {
                  addf.clear();
                  setState(() {});
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
