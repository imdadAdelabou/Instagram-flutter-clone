import 'package:flutter/material.dart';

final ThemeData blackTheme = ThemeData(
  primaryColor: Color(0xffBD19D1),
  textSelectionTheme: TextSelectionThemeData(
    cursorColor: Color(0xffBD19D1),
  ),
  scaffoldBackgroundColor: Colors.black,
  inputDecorationTheme: InputDecorationTheme(
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15.0),
      borderSide: BorderSide(color: Color(0xffBD19D1)),
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15.0),
      borderSide: BorderSide(
        color: Color(0xffBD19D1),
      ),
    ),
  ),
);

enum ViewState { Error, Retrieved, Busy, Idle }

enum TypeField { password, normal }
