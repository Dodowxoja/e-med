import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: InkWell(
          child: const Text('Back'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        title: Text('Taken drug details'),
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
