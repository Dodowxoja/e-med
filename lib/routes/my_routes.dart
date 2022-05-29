import 'package:e_med/views/auth/view/auth_view.dart';
import 'package:e_med/views/splash/splash_view.dart';
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
    }
  }
}
