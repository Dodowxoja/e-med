import 'package:e_med/core/components/my_text_style.dart';
import 'package:e_med/core/constants/const_color.dart';
import 'package:e_med/views/pages/doctors/doctors_view.dart';
import 'package:e_med/views/pages/hospitals/hospitals_view.dart';
import 'package:e_med/views/pages/treatments/tretments_view.dart';
import 'package:e_med/views/pages/home/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CartView extends StatefulWidget {
  const CartView({Key? key}) : super(key: key);

  static int currentIndex = 0;
  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> with TickerProviderStateMixin {
  TabController? tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        physics: const NeverScrollableScrollPhysics(),
        controller: tabController,
        children: [
          const HomeView(),
          const TreatmentsView(),
          DoctorsView(),
          const HospitalsView(),
        ],
      ),
      bottomNavigationBar: TabBar(
        indicatorColor: Colors.transparent,
        controller: tabController,
        tabs: [
          myTabCart(0, 'home_cart2', 'Home'),
          myTabCart(1, 'treatments_cart2', 'Treatments'),
          myTabCart(2, 'doctors_cart2', 'Doctors'),
          myTabCart(3, 'hospitals_cart2', 'Hospitals'),
        ],
        onTap: (v) {
          CartView.currentIndex = v;
          tabController!.index = v;
          setState(() {});
        },
      ),
    );
  }

  Tab myTabCart(int numIndex, iconName, tabName) {
    return Tab(
      icon: SvgPicture.asset(
        'assets/icons/$iconName.svg',
        color: tabController!.index == numIndex
            ? ConstColor.colorBlue
            : ConstColor.colorDark60,
      ),
      child: Text(
        tabName,
        style: MyTextStyle.textStyle(
          size: 12,
          colors: tabController!.index == numIndex
              ? ConstColor.colorBlue
              : ConstColor.colorDark60,
        ),
      ),
    );
  }
}
