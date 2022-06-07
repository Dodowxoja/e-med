import 'package:e_med/core/components/my_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';

class HospitalPage extends StatelessWidget {
  const HospitalPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Hospital',
          style: MyTextStyle.myTextStyle(size: 20),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const CircleAvatar(radius: 60),
            const Text('Tashkent International Clinic'),
            SizedBox(
              height: 73,
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('Phone number'),
                      Text('+998 90 123 45 67'),
                    ],
                  ),
                  const Icon(Icons.call),
                ],
              ),
            ),
            SizedBox(
              height: 101,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Text('Phone number'),
                  Text('+998 90 123 45 67'),
                  Text('10:00 - 16:00'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
