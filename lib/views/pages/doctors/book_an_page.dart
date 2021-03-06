import 'package:e_med/core/components/my_app_bar.dart';
import 'package:e_med/core/components/my_text_style.dart';
import 'package:e_med/core/constants/const_color.dart';
import 'package:e_med/views/cart/view/cart_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DoctorAddAppointmentPage extends StatefulWidget {
  const DoctorAddAppointmentPage({Key? key}) : super(key: key);

  @override
  State<DoctorAddAppointmentPage> createState() =>
      _DoctorAddAppointmentPageState();
}

class _DoctorAddAppointmentPageState extends State<DoctorAddAppointmentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        context: context,
        title: const Text("Book an appoinment"),
        centerTitle: true,
        preferedSizeHeight: 0.07,
        iconTheme: IconThemeData(color: ConstColor.colorDark60),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Divider(color: ConstColor.colorDark60, height: 1),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text("Appoinment to:", style: MyTextStyle.textStyle()),
          ),
          ListTile(
            leading: CircleAvatar(backgroundColor: ConstColor.colorDark60),
            title: Text("Mavlonov Boburjon", style: MyTextStyle.textStyle()),
            subtitle: Text(
              "Pediatric pulmonolog at Pediatric hospital №14",
              style: MyTextStyle.textStyle(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Divider(color: ConstColor.colorDark60, height: 1),
                const SizedBox(height: 30),
                Text("Service type", style: MyTextStyle.textStyle()),
                const SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Choose doctor's service type...",
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.arrow_drop_down),
                      onPressed: () {},
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                const SizedBox(height: 25),
                Text("Enter the time", style: MyTextStyle.textStyle()),
                const SizedBox(height: 10),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 56,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 0.8, color: ConstColor.colorBlue),
                  ),
                  child: Row(
                    children: [
                      const SizedBox(width: 10),
                      SvgPicture.asset(
                        "assets/icons/Frame 33705.svg",
                        height: 25,
                        width: 25,
                      ),
                      const SizedBox(width: 5),
                      Text(
                        "DD.MM.YYYY / HH:MM - HH:MM",
                        style: MyTextStyle.textStyle(),
                      ),
                      IconButton(
                        icon: const Icon(Icons.arrow_drop_down),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            elevation: 0,
            fixedSize: const Size(350, 54),
            primary: ConstColor.colorBlue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Text(
            "Confirm",
            style: MyTextStyle.textStyle(
              size: 18,
              colors: ConstColor.colorWhite,
              fontWeight: FontWeight.w600,
            ),
          ),
          onPressed: () {
            showDialog(
              context: context,
              builder: (_) {
                return AlertDialog(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  content: Container(
                    height: 346,
                    width: 329,
                    decoration: BoxDecoration(
                        color: ConstColor.colorWhite,
                        borderRadius: BorderRadius.circular(12)),
                    padding: const EdgeInsets.all(24),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset('assets/images/union.svg'),
                        Text(
                          'Your have successfully booked an appointment',
                          style: MyTextStyle.textStyle(
                              size: 20, fontWeight: FontWeight.w600),
                        ),
                        Text(
                          'You can go to Mavlonov Boburjon on January 24 at 10:00 - 11:00',
                          style: MyTextStyle.textStyle(),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            fixedSize: Size(
                              MediaQuery.of(context).size.width,
                              54,
                            ),
                            elevation: 0,
                            primary: ConstColor.colorBlue,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                            Navigator.pop(context);
                            Navigator.pop(context);
                          },
                          child: Text('Go Home'),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
