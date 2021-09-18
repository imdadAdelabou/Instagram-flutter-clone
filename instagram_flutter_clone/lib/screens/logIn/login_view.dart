import "package:flutter/material.dart";
import 'package:form_field_validator/form_field_validator.dart';
import 'package:instagram_flutter_clone/components/back_component.dart';
import 'package:instagram_flutter_clone/components/base_view.dart';
import 'package:instagram_flutter_clone/components/custom_button.dart';
import 'package:instagram_flutter_clone/components/custom_textformfield.dart';
import 'package:instagram_flutter_clone/screens/logIn/login_model.dart';
import 'package:instagram_flutter_clone/utils/constant.dart';
import 'package:instagram_flutter_clone/utils/functions.dart';

class LoginView extends StatelessWidget {
  LoginView({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    double maxWidth = MediaQuery.of(context).size.width;

    return BaseView<LoginModel>(
      builder: (context, model, child) => SafeArea(
        child: Scaffold(
          body: Form(
            key: _formKey,
            child: Padding(
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
                  CustomTextFormField(
                    hintText: "johnDoe@gmail.com",
                    getValue: (String value) {
                      print(value);
                    },
                    listValidator: MultiValidator([
                      RequiredValidator(errorText: "Please, enter your email"),
                    ]),
                  ),
                  const SizedBox(height: 30.0),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: returnHeadTitle("Password"),
                  ),
                  SizedBox(height: 8.0),
                  CustomTextFormField(
                    typeField: TypeField.password,
                    hintText: "Enter your password",
                    getValue: (String value) {
                      print(value);
                    },
                    listValidator: MultiValidator(
                      [
                        RequiredValidator(
                            errorText: "Please, enter your password"),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30.0),
                  CustomButton(
                    content: Text(
                      "Log in",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    action: () {
                      if (_formKey.currentState!.validate()) {
                        print("is safe");
                        Navigator.of(context).pushNamed("/home");
                      }
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?",
                        style: TextStyle(
                          color: Colors.grey,
                          fontFamily: "Poppins",
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text(
                          "Sign up",
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
    );
  }
}
