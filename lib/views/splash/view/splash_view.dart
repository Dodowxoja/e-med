import 'package:e_med/core/constants/const_color.dart';
import 'package:e_med/views/splash/cubit/splash_cubit.dart';
import 'package:e_med/views/splash/state/splash_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  // @override
  // void initState() {
  //   super.initState();
  //   _splash(context);
  // }

  // _splash(context) async {
  //   await Future.delayed(const Duration(seconds: 3));
  //   Navigator.pushReplacementNamed(context, '/auth');
  // }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SplashCubit(context),
      child: Scaffold(
        backgroundColor: ConstColor.colorBlue,
        body: BlocConsumer<SplashCubit, SplashState>(
          listener: (context, state) {},
          builder: (context, state) {
            return Center(
              child: SvgPicture.asset('assets/images/e-med_white.svg'),
            );
          },
        ),
      ),
    );
  }
}
