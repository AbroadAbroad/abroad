import 'package:abroad/src/utils/theme/widgets_theme/outlined_button_theme.dart';
import 'package:abroad/src/utils/theme/widgets_theme/text_field_theme.dart';
import 'package:abroad/src/utils/theme/widgets_theme/text_theme.dart';
import 'package:flutter/material.dart';

class TAppTheme {
  TAppTheme._();

  static ThemeData lightTheme = ThemeData(
      brightness: Brightness.light,
      textTheme: TTextTheme.lightTextTheme,
      appBarTheme: const AppBarTheme(),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(),
      elevatedButtonTheme:
          ElevatedButtonThemeData(style: ElevatedButton.styleFrom()),
      outlinedButtonTheme: AOutlinedButtonTheme.lightOutlinedButtonTheme,
      inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme,
      pageTransitionsTheme: const PageTransitionsTheme(builders: {
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
        TargetPlatform.android: CupertinoPageTransitionsBuilder(),
      }));

  static ThemeData darkTheme = ThemeData(
      brightness: Brightness.dark,
      appBarTheme: const AppBarTheme(
        color: Colors.transparent,
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(),
      elevatedButtonTheme:
          ElevatedButtonThemeData(style: ElevatedButton.styleFrom()),
      inputDecorationTheme: TTextFormFieldTheme.darkInputDecorationTheme,
      pageTransitionsTheme: const PageTransitionsTheme(builders: {
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
        TargetPlatform.android: CupertinoPageTransitionsBuilder(),
      }));
}
