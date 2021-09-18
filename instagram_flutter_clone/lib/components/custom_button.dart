import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Widget content;
  final Function() action;
  CustomButton({
    required this.content,
    required this.action,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Color(0xffBD19D1),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
        ),
        onPressed: action,
        child: content,
      ),
    );
  }
}
