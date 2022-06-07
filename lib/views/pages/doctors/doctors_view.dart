import 'package:e_med/core/components/my_app_bar.dart';
import 'package:e_med/core/components/my_text_style.dart';
import 'package:e_med/core/constants/const_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DoctorsView extends StatelessWidget {
  DoctorsView({Key? key}) : super(key: key);

  final List<Map> mockDataDotors = [
    //Recommended doctors for you
    {'name': "Mavlonov Boburjon", 'jobs': "Pediatric Pulmonolog"},
    {'name': "Usmonov Dilshod", 'jobs': "Anesthesiology"},
    {'name': "Akramov Burhoniddin", 'jobs': "Allergy & Immunology"},
    {'name': "Iminoxunov Nuruddin", 'jobs': "Pediatric Pulmonolog"},
    //List of Doctors
    {'name': "Ma'murov Abbos", 'jobs': "Endocrinology"},
    {'name': "Isoqov Husan", 'jobs': "Pediatric Pulmonolog"},
    {'name': "Abdullajonov Adhamjonov", 'jobs': "Anesthesiology"},
    {'name': "Abbosov Farruh", 'jobs': "Allergy & Immunology"},
    {'name': "Abdullajonov Dilmurod", 'jobs': "Pediatric Pulmonolog"},
    {"name": "Shokirxonov Saidamirxon", "jobs": "Endocrinology"}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        centerTitle: true,
        context: context,
        preferedSizeHeight: 0.12,
        leading: const Image(image: AssetImage("assets/images/ellipse.png")),
        title: SvgPicture.asset("assets/icons/Group 33665.svg"),
        action: [
          IconButton(
            icon: SvgPicture.asset("assets/icons/Group 33659.svg"),
            onPressed: () {},
          )
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(4),
          child: InkWell(
            child: Container(
              height: 36,
              width: 340,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: ConstColor.colorDark60,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.search, color: ConstColor.colorDark60),
                  Text(
                    "Search doctors by name or position",
                    style: MyTextStyle.myTextStyle(),
                  ),
                  const SizedBox(width: 5),
                ],
              ),
            ),
            onTap: () {},
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Divider(thickness: 0.5, color: ConstColor.colorDark60),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              "Recommended doctors for you",
              style: MyTextStyle.myTextStyle(),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.6,
            child: ListView.builder(
              itemBuilder: (context, __) => InkWell(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: ConstColor.colorDark60,
                  ),
                  title: Text(
                    mockDataDotors[__]["name"].toString(),
                    style: MyTextStyle.myTextStyle(),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          mockDataDotors[__]["jobs"].toString(),
                          style: MyTextStyle.myTextStyle(),
                        ),
                        Divider(thickness: 0.3, color: ConstColor.colorDark60),
                      ],
                    ),
                  ),
                  trailing: const Icon(Icons.chevron_right),
                ),
                onTap: () {},
              ),
              itemCount: mockDataDotors.length,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
            child: Text("List of doctors", style: MyTextStyle.myTextStyle()),
          ),
          Divider(thickness: 0.8, color: ConstColor.colorDark60),
        ],
      ),
    );
  }
}
