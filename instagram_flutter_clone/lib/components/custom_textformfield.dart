import "package:flutter/material.dart";

class CustomTextFormField extends StatelessWidget {
  final String hintText;
  const CustomTextFormField({
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
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
