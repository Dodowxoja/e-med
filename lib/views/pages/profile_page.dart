import 'package:e_med/core/components/my_app_bar.dart';
import 'package:e_med/core/components/my_text_style.dart';
import 'package:e_med/core/constants/const_color.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        context: context,
        title: const Text("Mavlonov Boburjon"),
        centerTitle: true,
        preferedSizeHeight: 0.07,
        iconTheme: IconThemeData(color: ConstColor.colorDark60),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Divider(
            height: 0.5,
            color: ConstColor.colorDark60,
          ),
          Expanded(
            flex: 3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 60,
                  backgroundColor: Colors.black,
                ),
                const SizedBox(height: 30),
                Text(
                  "Mavlonov Boburjon",
                  style: MyTextStyle.myTextStyle(),
                ),
                Text(
                  "Pediatric Pulmonolog",
                  style: MyTextStyle.myTextStyle(),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 50),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _text1("Place of work"),
                    const SizedBox(height: 12),
                    _text2("Pediatric hospital №14"),
                    const SizedBox(height: 25),
                    _text1("Work location"),
                    const SizedBox(height: 12),
                    _text2(
                      "Shaykhantakhur district, st. Zulfiyahonim, 18 Tashkent, 100128",
                    ),
                    const SizedBox(height: 25),
                    _text1("Available time"),
                    const SizedBox(height: 12),
                    _text2("Monday - Saturday      10:00 - 16:00"),
                    const SizedBox(height: 25),
                    _text1("Raiting"),
                    const SizedBox(height: 12),
                    Row(
                      children: [
                        _icon(),
                        _icon(),
                        _icon(),
                        _icon(),
                        Icon(Icons.star, color: ConstColor.colorDark60),
                      ],
                    ),
                    const SizedBox(height: 25),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        fixedSize: (const Size(350, 54)),
                        primary: ConstColor.colorDark60,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: Text(
                        "Book an appoinment",
                        style: MyTextStyle.myTextStyle(),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/book_an_appoinment2');
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Icon _icon() {
    return Icon(
      Icons.star,
      color: ConstColor.colorDark60,
    );
  }

  Text _text1(String text) {
    return Text(
      text,
      style: MyTextStyle.myTextStyle(),
    );
  }

  Text _text2(String text) {
    return Text(
      text,
      style: MyTextStyle.myTextStyle(),
    );
  }
}
