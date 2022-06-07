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
        leading: Image.asset("assets/images/profile1.png"),
        title: SvgPicture.asset("assets/images/e_med_logo.svg"),
        action: [
          IconButton(
            icon: SvgPicture.asset("assets/icons/filter.svg"),
            onPressed: () {},
          )
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(10),
          child: InkWell(
            child: Container(
              height: 36,
              width: 340,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: ConstColor.colorSearch,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.search, color: ConstColor.colorSearchText),
                  Text(
                    "Search doctors by name or position",
                    style: MyTextStyle.myTextStyle(
                      colors: ConstColor.colorSearchText,
                      size: 17,
                    ),
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
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.73,
            child: ListView.builder(
              itemBuilder: (context, __) => InkWell(
                child: Column(
                  children: [
                    mockDataDotors[__] == mockDataDotors[0]
                        ? Padding(
                            padding: const EdgeInsets.all(20),
                            child: Text(
                              "Recommended doctors for you",
                              style: MyTextStyle.myTextStyle(
                                colors: ConstColor.colorDark60,
                                size: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          )
                        : const SizedBox(),
                    mockDataDotors[__] == mockDataDotors[4]
                        ? Padding(
                            padding: const EdgeInsets.only(
                              top: 20,
                              left: 20,
                              right: 20,
                            ),
                            child: Text(
                              "List of doctors",
                              style: MyTextStyle.myTextStyle(
                                colors: ConstColor.colorDark60,
                                size: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          )
                        : const SizedBox(),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: ConstColor.colorDark60,
                      ),
                      title: Text(
                        mockDataDotors[__]["name"].toString(),
                        style: MyTextStyle.myTextStyle(
                            size: 18, fontWeight: FontWeight.w600),
                      ),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              mockDataDotors[__]["jobs"].toString(),
                              style: MyTextStyle.myTextStyle(
                                  colors: ConstColor.colorDark60, size: 16),
                            ),
                            Divider(
                                thickness: 0.3, color: ConstColor.colorDark60),
                          ],
                        ),
                      ),
                      trailing: const Icon(Icons.chevron_right),
                    ),
                  ],
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/doctorInner');
                },
              ),
              itemCount: mockDataDotors.length,
            ),
          ),
        ],
      ),
    );
  }
}
