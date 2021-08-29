import "package:flutter/material.dart";
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

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
