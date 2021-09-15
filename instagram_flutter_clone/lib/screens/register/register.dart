import "package:flutter/material.dart";
import 'package:instagram_flutter_clone/components/base_view.dart';
import 'package:instagram_flutter_clone/screens/register/register_model.dart';

class RegisterView extends StatelessWidget {
  static const name = "/register";
  @override
  Widget build(BuildContext context) {
    double maxWidth = MediaQuery.of(context).size.width;
    return BaseView<RegisterModel>(
      builder: (BuildContext context, model, child) => SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  "Sign up",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: maxWidth * 0.08,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Poppins",
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
