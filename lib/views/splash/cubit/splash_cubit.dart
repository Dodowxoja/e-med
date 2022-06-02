import 'package:e_med/views/auth/view/auth_view.dart';
import 'package:e_med/views/splash/state/splash_state.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit(BuildContext context) : super(SplashInitial()) {
    Future.delayed(const Duration(seconds: 3)).then(
      (value) => SplashComplete().nextPage(context),
    );
  }
}
