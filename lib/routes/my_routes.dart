import 'package:e_med/views/auth/view/auth_view.dart';
import 'package:e_med/views/auth/view/log_in_view.dart';
import 'package:e_med/views/auth/view/sign_up_view.dart';
import 'package:e_med/views/cart/view/cart_view.dart';
import 'package:e_med/views/pages/doctors/book_an_page.dart';
import 'package:e_med/views/pages/doctors/doctors_view.dart';
import 'package:e_med/views/pages/doctors/doctor_inner_page.dart';
import 'package:e_med/views/pages/home/home_view.dart';
import 'package:e_med/views/pages/treatments/tretments_view.dart';
import 'package:e_med/views/splash/view/splash_view.dart';
import 'package:flutter/material.dart';

class MyRoutes {
  static final MyRoutes _instanse = MyRoutes.init();
  static MyRoutes get instanse => MyRoutes._instanse;
  MyRoutes.init();

  Route? onGenerate(RouteSettings s) {
    var args = s.arguments;
    switch (s.name) {
      case '/splash':
        return MaterialPageRoute(builder: (_) => const SplashView());
      case '/auth':
        return MaterialPageRoute(builder: (_) => const AuthView());
      case '/signUp':
        return MaterialPageRoute(builder: (_) => const SignUpView());
      case '/logIn':
        return MaterialPageRoute(builder: (_) => const LogInView());
      //CART
      case '/cart':
        return MaterialPageRoute(builder: (_) => CartView());
      //HOME PAGE
      case '/home':
        return MaterialPageRoute(builder: (_) => const HomeView());
      //TREATMENTS
      case '/treatments':
        return MaterialPageRoute(builder: (_) => const TreatmentsView());

      case '/doctors':
        return MaterialPageRoute(builder: (_) => DoctorsView());
      case '/doctorInner':
        return MaterialPageRoute(builder: (_) => const DoctorInnerPage());
      case '/doctorAddAppointment':
        return MaterialPageRoute(builder: (_) => DoctorAddAppointmentPage());
    }
  }
}
