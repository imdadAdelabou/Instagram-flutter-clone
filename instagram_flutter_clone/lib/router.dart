import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:instagram_flutter_clone/screens/register/register.dart';
import 'package:instagram_flutter_clone/splash_screen.dart';

class Routerr {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/splash-screen':
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case '/register':
        return MaterialPageRoute(builder: (_) => RegisterView());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Text("No view for this route"),
          ),
        );
    }
  }
}
