import 'package:flutter/material.dart';
import 'package:instagram_flutter_clone/locator.dart';
import 'package:instagram_flutter_clone/splash_screen.dart';
import 'package:instagram_flutter_clone/utils/constant.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: blackTheme,
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
