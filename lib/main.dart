import 'package:e_med/routes/my_routes.dart';
import 'package:e_med/views/pages/hospitals/hospital.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'e-med',
      theme: ThemeData(primarySwatch: Colors.blue),
      // home: const HospitalPage(),
      onGenerateRoute: MyRoutes.instanse.onGenerate,
      initialRoute: '/cart',
    );
  }
}
