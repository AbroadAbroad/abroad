import 'package:flutter/material.dart';

class AOutlinedButtonTheme {
  AOutlinedButtonTheme._();

  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(

    style: OutlinedButton.styleFrom(
      side: const BorderSide(width:3, color: Colors.white),
      minimumSize: const Size(200, 50),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(100),
      ),
    ),
  );
}