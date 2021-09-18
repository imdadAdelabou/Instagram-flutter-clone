import "package:flutter/material.dart";
import 'package:instagram_flutter_clone/components/back_component.dart';
import 'package:instagram_flutter_clone/components/base_view.dart';
import 'package:instagram_flutter_clone/components/custom_button.dart';
import 'package:instagram_flutter_clone/components/custom_textformfield.dart';
import 'package:instagram_flutter_clone/screens/logIn/login_model.dart';
import 'package:instagram_flutter_clone/utils/functions.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double maxWidth = MediaQuery.of(context).size.width;
    return BaseView<LoginModel>(
      builder: (context, model, child) => SafeArea(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20.0),
                Row(
                  children: [
                    BackComponent(),
                    const SizedBox(width: 20.0),
                    Text(
                      "Log In",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: maxWidth * 0.08,
                        color: Colors.white,
                        fontFamily: "Poppins",
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30.0),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: returnHeadTitle("Email"),
                ),
                SizedBox(height: 8.0),
                CustomTextFormField(hintText: "johnDoe@gmail.com"),
                const SizedBox(height: 30.0),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: returnHeadTitle("Password"),
                ),
                SizedBox(height: 8.0),
                CustomTextFormField(hintText: "Enter your password"),
                const SizedBox(height: 30.0),
                CustomButton(
                  content: Text(
                    "Log in",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  action: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}