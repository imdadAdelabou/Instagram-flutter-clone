import "package:flutter/material.dart";
import 'package:form_field_validator/form_field_validator.dart';
import 'package:instagram_flutter_clone/utils/constant.dart';

class CustomTextFormField extends StatelessWidget {
  final String hintText;
  final MultiValidator listValidator;
  final Function(String value) getValue;
  final TypeField? typeField;
  const CustomTextFormField({
    required this.hintText,
    required this.getValue,
    required this.listValidator,
    this.typeField,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        obscureText: typeField == TypeField.password,
        validator: listValidator,
        onChanged: getValue,
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
          filled: true,
          fillColor: Color(0xff202024),
          hintText: hintText,
          hintStyle: TextStyle(
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
