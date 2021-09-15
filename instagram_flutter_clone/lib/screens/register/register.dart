import "package:flutter/material.dart";
import 'package:instagram_flutter_clone/components/base_view.dart';
import 'package:instagram_flutter_clone/components/custom_textformfield.dart';
import 'package:instagram_flutter_clone/screens/register/register_model.dart';
import 'package:instagram_flutter_clone/utils/functions.dart';

class RegisterView extends StatelessWidget {
  static const name = "/register";

  @override
  Widget build(BuildContext context) {
    double maxWidth = MediaQuery.of(context).size.width;
    const double space = 8.0;
    return BaseView<RegisterModel>(
      builder: (BuildContext context, model, child) => SafeArea(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20.0),
                Text(
                  "Sign up",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: maxWidth * 0.08,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Poppins",
                  ),
                ),
                SizedBox(height: 30.0),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: returnHeadTitle("Name"),
                ),
                const SizedBox(height: space),
                const CustomTextFormField(),
                const SizedBox(height: 30.0),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: returnHeadTitle("Email"),
                ),
                const SizedBox(height: space),
                const CustomTextFormField(),
                const SizedBox(height: 30.0),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: returnHeadTitle("Password"),
                ),
                const SizedBox(height: space),
                const CustomTextFormField(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
