import 'package:e_med/core/components/my_text_style.dart';
import 'package:e_med/core/constants/const_color.dart';
import 'package:e_med/core/constants/const_text.dart';
import 'package:flutter/material.dart';

class AuthView extends StatelessWidget {
  const AuthView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(child: Image.asset('assets/images/e-med_blue_big.png')),
            SizedBox(
              height: 190,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    ConstText.authText1,
                    style: MyTextStyle.myTextStyle(size: 40),
                  ),
                  Text(
                    ConstText.authText2,
                    style: MyTextStyle.myTextStyle(
                      size: 18,
                      colors: ConstColor.colorDark60,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 124,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      primary: ConstColor.colorBlue,
                      fixedSize: Size(MediaQuery.of(context).size.width, 54),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: const Text('Get Started'),
                    onPressed: () {
                      Navigator.pushNamed(context, '/signUp');
                    },
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      primary: ConstColor.colorWhite,
                      fixedSize: Size(MediaQuery.of(context).size.width, 54),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                        side: BorderSide(
                          color: ConstColor.colorBlue,
                        ),
                      ),
                    ),
                    child: Text(
                      'Log In',
                      style: MyTextStyle.myTextStyle(
                        colors: ConstColor.colorBlue,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/logIn');
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
