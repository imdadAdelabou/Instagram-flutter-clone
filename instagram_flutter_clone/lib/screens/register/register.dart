import "package:flutter/material.dart";
import 'package:flutter/widgets.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:instagram_flutter_clone/components/base_view.dart';
import 'package:instagram_flutter_clone/components/custom_button.dart';
import 'package:instagram_flutter_clone/components/custom_textformfield.dart';
import 'package:instagram_flutter_clone/screens/register/register_model.dart';
import 'package:instagram_flutter_clone/utils/functions.dart';

class RegisterView extends StatelessWidget {
  static const name = "/register";
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    double maxWidth = MediaQuery.of(context).size.width;
    const double space = 8.0;
    return BaseView<RegisterModel>(
      builder: (BuildContext context, model, child) => SafeArea(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: Form(
              key: _formKey,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20.0),
                    Text(
                      "Sign up",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: maxWidth * 0.08,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Poppins",
                      ),
                    ),
                    const SizedBox(height: 30.0),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: returnHeadTitle("Name"),
                    ),
                    const SizedBox(height: space),
                    CustomTextFormField(
                      getValue: (String value) {
                        model.setName(value);
                      },
                      hintText: "Olivier Cederborg",
                      listValidator: MultiValidator(
                        [
                          RequiredValidator(
                              errorText: "Please enter your name"),
                        ],
                      ),
                    ),
                    const SizedBox(height: 30.0),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: returnHeadTitle("Email"),
                    ),
                    const SizedBox(height: space),
                    CustomTextFormField(
                      hintText: "tim@gmail.com",
                      getValue: (String value) {
                        model.setEmail(value);
                      },
                      listValidator: MultiValidator(
                        [
                          RequiredValidator(
                              errorText: "Please enter your email"),
                          EmailValidator(
                              errorText: "Enter a valid email address"),
                        ],
                      ),
                    ),
                    const SizedBox(height: 30.0),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: returnHeadTitle("Password"),
                    ),
                    const SizedBox(height: space),
                    CustomTextFormField(
                      hintText: "Pick a strong password",
                      getValue: (String value) {
                        model.setPassword(value);
                      },
                      listValidator: MultiValidator(
                        [
                          RequiredValidator(
                              errorText: "Please enter your password"),
                          MinLengthValidator(8,
                              errorText:
                                  'Password must be at least 8 digits long'),
                        ],
                      ),
                    ),
                    const SizedBox(height: 30.0),
                    CustomButton(
                      content: Text(
                        "Create Account",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      action: () {
                        if (_formKey.currentState!.validate()) {
                          print("Name: ${model.name}");
                          print("email: ${model.email}");
                          print("password: ${model.password}");
                        }
                      },
                    ),
                    const SizedBox(height: 20.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Already have an account?",
                          style: TextStyle(
                            color: Colors.grey,
                            fontFamily: "Poppins",
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pushNamed("/login");
                          },
                          child: Text(
                            "Log in",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Poppins",
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
