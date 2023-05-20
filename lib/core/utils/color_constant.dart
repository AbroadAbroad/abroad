import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color gray600 = fromHex('#828282');

  static Color blueGray100F2 = fromHex('#f2d0d0d0');

  static Color gray700 = fromHex('#5f5f5f');

  static Color blueGray2003f = fromHex('#3fbacad0');

  static Color black900 = fromHex('#000000');

  static Color whiteA70026 = fromHex('#26ffffff');

  static Color bluegray400 = fromHex('#888888');

  static Color deepPurpleA200 = fromHex('#6042ff');

  static Color whiteA700 = fromHex('#ffffff');

  static Color deepPurpleA20000 = fromHex('#006042ff');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
