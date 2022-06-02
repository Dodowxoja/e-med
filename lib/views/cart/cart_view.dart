import 'package:flutter/material.dart';

class CartView extends StatelessWidget {
  const CartView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TabController controller;

    return Scaffold(
      body: TabBarView(
        // controller: controller,
        children: [
          Container(), //Home
          Container(), //Treatments
          Container(), //Doctors
          Container(), //Hospitals
        ],
      ),
      floatingActionButton: TabBar(
        tabs: [
          Tab(),
          Tab(),
          Tab(),
          Tab(),
        ],
      ),
    );
  }
}
