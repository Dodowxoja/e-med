import 'package:e_med/core/components/my_app_bar.dart';
import 'package:e_med/core/components/my_text_style.dart';
import 'package:e_med/core/constants/const_color.dart';
import 'package:e_med/views/pages/hospitals/cubit/hospital_cubit.dart';
import 'package:e_med/views/pages/hospitals/state/hospital_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HospitalsView extends StatelessWidget {
  HospitalsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HospitalCubit(),
      child: _scaffold(context),
    );
  }

  final List listImage = [
    'hospital1',
    'hospital2',
    'hospital3',
    'hospital4',
    'hospital5',
    'hospital6',
    'hospital7',
    'hospital8',
  ];

  Scaffold _scaffold(BuildContext context) {
    return Scaffold(
      appBar: _appBar(context),
      body: BlocConsumer<HospitalCubit, HospitalState>(
        listener: (context, state) {},
        builder: (context, state) => !context.watch<HospitalCubit>().isTrue
            ? mapPage(context)
            : Column(
                children: [
                  Divider(color: ConstColor.colorBlueShade50),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 10, left: 20, right: 20),
                    child: Stack(
                      alignment: AlignmentDirectional.bottomCenter,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Recommended hospitals for you",
                              style: MyTextStyle.textStyle(),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 15),
                              child: SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.66,
                                width: MediaQuery.of(context).size.width,
                                child: ListView.builder(
                                  scrollDirection: Axis.vertical,
                                  itemBuilder: (context, index) {
                                    return Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 15),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Stack(
                                            children: [
                                              Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.89,
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.63,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  image: DecorationImage(
                                                    fit: BoxFit.cover,
                                                    image: AssetImage(
                                                      "assets/images/${listImage[index]}.png",
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 15, left: 15),
                                                child: Row(
                                                  children: [
                                                    _container(
                                                      context,
                                                      0.043,
                                                      0.27,
                                                      _row("calendar",
                                                          "Mon - Sat"),
                                                    ),
                                                    const SizedBox(width: 10),
                                                    _container(
                                                      context,
                                                      0.043,
                                                      0.37,
                                                      _row("clock",
                                                          "09:00 - 18:00"),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(height: 15),
                                          Text(
                                            "Uzbekistan New International Clinic",
                                            style: MyTextStyle.textStyle(),
                                          ),
                                          const SizedBox(height: 5),
                                          Text(
                                            "Tashkent, Shaykhontokhur, Navoi street",
                                            style: MyTextStyle.textStyle(),
                                          ),
                                          const SizedBox(height: 18),
                                        ],
                                      ),
                                    );
                                  },
                                  itemCount: listImage.length,
                                ),
                              ),
                            ),
                          ],
                        ),
                        //!CARD AND MAP PAGES
                        Container(
                          height: MediaQuery.of(context).size.height * 0.07,
                          width: MediaQuery.of(context).size.width * 0.6,
                          decoration: BoxDecoration(
                            color: const Color(0xFF92949D),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.06,
                                width: MediaQuery.of(context).size.width * 0.3,
                                decoration: BoxDecoration(
                                  color: ConstColor.colorBlue,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                alignment: Alignment.center,
                                child: const Text('Card view'),
                              ),
                              InkWell(
                                child: Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.06,
                                  width:
                                      MediaQuery.of(context).size.width * 0.25,
                                  alignment: Alignment.center,
                                  child: const Text('Map view'),
                                ),
                                onTap: () {
                                  context.read<HospitalCubit>().visible();
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
      ),
    );
  }

//?----------------------------------------------------------------------------- MAP PAGE
  Stack mapPage(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 20),
          height: MediaQuery.of(context).size.height * 0.77,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/Frame 33991.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.07,
          width: MediaQuery.of(context).size.width * 0.6,
          decoration: BoxDecoration(
            color: const Color(0xFF92949D),
            borderRadius: BorderRadius.circular(50),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.06,
                  width: MediaQuery.of(context).size.width * 0.25,
                  alignment: Alignment.center,
                  child: const Text('Card view'),
                ),
                onTap: () {
                  context.read<HospitalCubit>().visible();
                },
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.06,
                width: MediaQuery.of(context).size.width * 0.3,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: ConstColor.colorBlue,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: const Text('Map view'),
              ),
            ],
          ),
        ),
      ],
    );
  }

//!----------------------------------------------------------------------------- AppBar
  MyAppBar _appBar(BuildContext context) {
    return MyAppBar(
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
        preferredSize: const Size.fromHeight(4),
        child: InkWell(
          child: Container(
            height: 36,
            width: 340,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: ConstColor.colorSearch,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.search, color: ConstColor.colorSearchText),
                const SizedBox(width: 15),
                Text("Search hospitals...", style: MyTextStyle.textStyle()),
              ],
            ),
          ),
          onTap: () {},
        ),
      ),
    );
  }

  Row _row(String svg, String time) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SvgPicture.asset("assets/icons/$svg.svg", height: 18, width: 18),
        Text(time, style: MyTextStyle.textStyle())
      ],
    );
  }

  Container _container(
    BuildContext context,
    double height,
    double width,
    Widget child,
  ) {
    return Container(
      height: MediaQuery.of(context).size.height * height,
      width: MediaQuery.of(context).size.width * width,
      decoration: BoxDecoration(
        color: ConstColor.colorWhite.withOpacity(0.8),
        borderRadius: BorderRadius.circular(50),
      ),
      child: child,
    );
  }
}
