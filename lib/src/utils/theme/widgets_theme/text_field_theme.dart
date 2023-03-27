import 'package:flutter/material.dart';

class TTextFormFieldTheme {
  TTextFormFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme =
       InputDecorationTheme(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100),
          borderSide: BorderSide(color: Colors.white, width: 2),
        ),
         focusedBorder: OutlineInputBorder(
           borderRadius: BorderRadius.circular(100),
           borderSide: BorderSide(width: 2, color: Colors.white),

         ),
        prefixIconColor: Colors.white,
        labelStyle: TextStyle(
            color: Colors.white.withOpacity(0.9),
        ),
        floatingLabelStyle: TextStyle(color: Colors.white),
);

  static InputDecorationTheme darkInputDecorationTheme =
      const InputDecorationTheme(
        border: OutlineInputBorder(),
        prefixIconColor: Colors.white,
        floatingLabelStyle: TextStyle(color: Colors.white),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
              width: 2, color: Colors.white),
        ),);

}