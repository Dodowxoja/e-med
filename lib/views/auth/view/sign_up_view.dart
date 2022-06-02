import 'package:e_med/core/components/my_app_bar_auth.dart';
import 'package:e_med/core/constants/const_color.dart';
import 'package:e_med/core/constants/const_text.dart';
import 'package:flutter/material.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBarAuth.myAppBar('Sign Up', context),
      backgroundColor: ConstColor.colorWhite,
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.9,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(ConstText.textSignUp1), //text1
                SizedBox(
                  height: 85,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(children: [Text(ConstText.textSignUp2)]), //text2
                      Form(child: TextFormField()), //?Text form fild FULL NAME
                    ],
                  ),
                ),
                SizedBox(
                  height: 113,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(children: [Text(ConstText.textSignUp3)]), //text3
                      Form(
                          child:
                              TextFormField()), //?Text form fild PHONE NUMBER
                      Text(ConstText.textSignUp4) //text4
                    ],
                  ),
                ),
                SizedBox(
                  height: 85,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          Text(ConstText.textSignUp5),
                        ],
                      ), //text5
                      Form(
                          child:
                              TextFormField()), //?Text form fild CREATE PASSWORD
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: ConstColor.colorBlue,
                    fixedSize: Size(MediaQuery.of(context).size.width, 54),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Text('Continue'),
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/cart');
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
