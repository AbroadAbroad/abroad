import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core/utils/color_constant.dart';

class AppDecoration {
  static BoxDecoration get gradientDeeppurpleA200DeeppurpleA20000 =>
      BoxDecoration(
        gradient: LinearGradient(
          begin: const Alignment(
            0.5,
            0,
          ),
          end: const Alignment(
            0.5,
            1,
          ),
          colors: [
            ColorConstant.deepPurpleA200,
            ColorConstant.deepPurpleA20000,
          ],
        ),
      );
  static BoxDecoration get fillBluegray100f2 => BoxDecoration(
        color: ColorConstant.blueGray100F2,
      );
  static BoxDecoration get outlineBluegray2003f => BoxDecoration(
        color: ColorConstant.whiteA70026,
        border: Border.all(
          color: ColorConstant.blueGray2003f,
          width: 1.w,
        ),
      );
  static BoxDecoration get outlineBlack900 => BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: ColorConstant.black900,
            width: 1.w,
          ),
        ),
      );
  static BoxDecoration get outlineBlack9001 => BoxDecoration(
        border: Border.all(
          color: ColorConstant.black900,
          width: 1.w,
        ),
      );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: ColorConstant.whiteA700,
      );
}

class BorderRadiusStyle {
  static BorderRadius customBorderLR30 = BorderRadius.only(
    topRight: const Radius.circular(30).r,
    bottomRight: const Radius.circular(30).r,
  );

  static BorderRadius customBorderTL30 = BorderRadius.only(
    topLeft: const Radius.circular(30).r,
    bottomLeft: const Radius.circular(30).r,
  );

  static BorderRadius roundedBorder12 = BorderRadius.circular(12).r;
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
