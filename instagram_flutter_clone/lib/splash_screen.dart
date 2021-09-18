import "package:flutter/material.dart";
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(seconds: 2),
      () => Navigator.of(context).pushNamed("/register"),
    );
  }

  @override
  Widget build(BuildContext context) {
    double maxWidth = MediaQuery.of(context).size.width;
    double maxHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              FontAwesomeIcons.instagram,
              color: Colors.white,
              size: maxHeight * .1,
            ),
            const SizedBox(height: 20.0),
            Text(
              "Instagram Clone",
              style: TextStyle(
                color: Colors.white,
                fontFamily: "Poppins",
                fontSize: maxWidth * 0.07,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
